#!/bin/bash

directory=/home/$USER/Pictures/wp
monitor=`hyprctl monitors | grep Monitor | awk '{print $2}'`

if [ -d "$directory" ]; then
    random_background=$(ls $directory/*.jpg | shuf -n 1)
   

    swww img $random_background
    wal -ni $random_background --saturate 1.0
    sleep 1
    /home/$USER/.config/hypr/scripts/launch.sh # relaunches waybar with new design


fi
