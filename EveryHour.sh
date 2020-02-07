#!/bin/bash

/* created by Wayne Orwig to be used with the PhotoFrame.html page

#redirect stdout/stderr to a log file
exec &> EveryHour.log

/* sync the photos from Onedrive occasionally
rclone sync -v Onedrive:DCIM/PhotoFrame /home/pi/PhotoFrame

/* create a 1-2 hour old history to look for a rate of change
cp ambient1.json ambient2.json
cp ambient.json ambient1.json
