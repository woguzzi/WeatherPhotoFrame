#!/bin/bash

/* created by Wayne Orwig to be used with the PhotoFrame.html page

#redirect stdout/stderr to a log file
exec &> EveryMinute.log

# Grab a random photo for the picture frame page
cd ./PhotoFrame 
cp "$(ls *.jpg | shuf -n1)" ./../PhotoTmp.jpg
cd ..
# Shrink it and put it in the www/html directory
convert PhotoTmp.jpg -resize x1024 -auto-orient Photo.jpg
cp Photo.jpg /var/www/html/Photo.jpg

#grab my weather from the Ambient weather site, replace XYZ with your keys 
curl "https://api.ambientweather.net/v1/devices?applicationKey=XYZ&apiKey=XYZ" >ambient.json
cp ambient*.json /var/www/html/
