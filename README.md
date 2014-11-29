==GDAL usage:
info: https://developers.google.com/kml/articles/raster

To make a Mercator projection:
gdalinfo map.jpg

gdal_translate -of VRT -a_srs EPSG:4326 -gcp 0 0 -180 90 -gcp 4961 0 180 90 -gcp 4961 3508 180 -90 map.jpg trans.vrt

gdal2tiles.py -z 1-6 trans.vrt test2