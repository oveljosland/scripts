#!/usr/bin/env bash

DIR="$HOME/pictures/wallpapers/paintings/"
OLD=$(hyprctl hyprpaper listloaded)
NEW=$(find "$DIR" -type f ! -name "$(basename "$OLD")" | shuf -n 1)

hyprctl hyprpaper reload ,"$NEW"
