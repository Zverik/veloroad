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
curl -z data/ptsans.zip -L -o data/ptsans.zip https://www.fontsquirrel.com/fonts/download/pt-sans
unzip -o data/ptsans.zip -d data/ptsans

echo Downloading Droid Sans Fallback font
curl -z data/ptsans/DroidSansFallback.ttf -L -o data/ptsans/DroidSansFallback.ttf https://github.com/android/platform_frameworks_base/raw/master/data/fonts/DroidSansFallback.ttf
