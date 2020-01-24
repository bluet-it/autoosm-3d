#! /bin/bash
curl https://overpass-api.de/api/interpreter?data=$(python -c "from urllib import quote; print(quote(\"$(cat input/request | tr -d '\n' | tr -d '\r' | tr ' ' '	' | tr '\"' '\\\"')\"))") -o output/map.osm
./osm2world/osm2world.sh -i ../output/map.osm -o ../output/map.obj --config ../input/*.properties
