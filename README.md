# Veloroad Style

This style is specifically made for printing in black and white at at least 150 dpi with a route overlayed.
Contrast is high, labels are small and aplenty. You can see a demo at [osmz.ru/veloroad.html](http://osmz.ru/veloroad.html),
where you can compare the layer to other maps, and you can use the layer at [openstreetmap.ru](http://openstreetmap.ru).

## Installation

    npm install -g carto
    git clone https://github.com/Zverik/veloroad.git veloroad
    cd veloroad
    ./get-shapefiles.sh
    carto -l project.mml > veloroad.xml

## Preparing contours

I use smoothed [GMTED2010](http://topotools.cr.usgs.gov/gmted_viewer/) relief maps for generating contours,
because that way you don't get many anrtifacts (unlike SRTM). And it covers most of the planet, also unlike SRTM.
Download Median/15 squares merge them, apply gaussian filter in SAGA and generate contours with GDAL:

	gdal_merge 30N000E_20101117_gmted_med150.tif dem2.tif ... -o gmted_dem.tif
    saga_cmd libio_gdal 0 -GRIDS tmp1 -FILES gmted_dem.tif
    saga_cmd libgrid_filter 1 -INPUT tmp1.sgrd -RESULT tmp2 -RADIUS 2
    saga_cmd libio_gdal 2 -GRIDS tmp2.sgrd -FILE gmted-new.tif
    gdal_contour -a ELEV -i 25 gmted-new.tif gmted-new-contours.shp
    shapeindex gmted-new-contours.shp

## Usage

Traces are meant not to overlayed on top of the map, but included underneath labels in "route" layer. So yes,
you should use Mapnik for rendering traces, produce a vector image and postprocess it with Inkscape, moving labels
out of the way. Someday there will be a website for most of that, but for now please use
[mapnik-group-text](https://github.com/Zverik/mapnik-group-text) and [Nik4](https://github.com/Zverik/Nik4).

### Scale bar

The style has "scale" layer, which should be configurable. In `project.mml` there is an SQL with subquery with
coordinates and two numeric properties. You can change those, so the linear scale is drawn on the resulting map.

## Author and license

The style was made by Ilya Zverev, published under WTFPL. Tiles at `tile.osmz.ru` are published under CC-BY, you need
to add "Tiles © Ilya Zverev" to your copyright string (and for OSM, obviously).
