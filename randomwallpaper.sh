#!/bin/sh

sleep 5

DIR="/home/derrick/Pictures/Wallpapers"

PIC=$(ls $DIR/*.* | shuf -n1)

gsettings set org.gnome.desktop.background picture-uri "file:///$PIC"

gsettings set org.gnome.desktop.background picture-options "stretched"


