#!/usr/bin/env bash

battery()
{
    while :; do
        charge=$(cat /sys/class/power_supply/BAT0/capacity)
        if [[ $charge -le 75 ]]; then
            notify-send -u critical -t 5000 "Battery is low"
        fi &&
        sleep 60
    done
}

xrdb -load "$HOME"/.Xresources
feh --bg-scale "$HOME"/.wallpapers/gradient-purple.jpg
xhost +local:
battery &

wait
