#!/bin/bash
name=$(date +"%d-%m-%y-%T")
file_name=$name.png
scrot -s ~/Pictures/Screenshots/$file_name
xclip -selection clipboard -target image/png -i ~/Pictures/Screenshots/$file_name
