#!/bin/sh
# Check swww daemon
swww query
if [ $? -eq 1 ] ; then
    swww init
fi
swww img /home/hayden/Images/wallpaper.gif
