#!/bin/sh

mkdir -p data/water-polygons-split-3857
mkdir -p data/gmted
mkdir -p data/ptsans

echo Downloading water polygons
curl -z "data/water-polygons-split-3857.zip" -L -o "data/water-polygons-split-3857.zip" "http://data.openstreetmapdata.com/water-polygons-split-3857.zip"
unzip -o data/water-polygons-split-3857.zip -d data/
shapeindex data/water-polygons-split-3857/water_polygons.shp

echo Downloading contours
curl -z "data/gmted25.tar.xz" -L -o "data/gmted25.tar.xz" "http://zverik.osm.rambler.ru/gmted25.tar.xz"
tar -xJvf data/gmted25.tar.xz --overwrite -C data/gmted

echo Downloading PT Sans fonts
curl -z data/ptsans.zip -L -o data/ptsans.zip http://www.fontstock.com/public/PTSans.zip
unzip -o data/ptsans.zip -d data/ptsans
