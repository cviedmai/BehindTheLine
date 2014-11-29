# Behind The Line

Singapore's MRT depicts the history of the country. The name of each station has a meaning, some of them are in Chinese Mandarin, others in Tamil or English.

We've started to compile the history of each station in this document:
[https://docs.google.com/spreadsheet/pub?key=0AtCPi1OVgjfqdERwa3pMX2VWZHlrREJQUXZ1em1SUmc&output=html](https://docs.google.com/spreadsheet/pub?key=0AtCPi1OVgjfqdERwa3pMX2VWZHlrREJQUXZ1em1SUmc&output=html)


## GDAL usage:
info: https://developers.google.com/kml/articles/raster

To make a Mercator projection: gdalinfo map.jpg

gdal_translate -of VRT -a_srs EPSG:4326 -gcp 0 0 -180 90 -gcp 4961 0 180 90 -gcp 4961 3508 180 -90 map.jpg trans.vrt

gdal2tiles.py -z 1-6 trans.vrt test2
