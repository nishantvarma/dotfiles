#!/usr/bin/env bash

battery()
{
    while :; do
        charge=$(cat /sys/class/power_supply/BAT0/capacity)
        if [[ $charge -le 25 ]]; then
            notify-send -u critical -t 5000 "Battery is low"
        fi &&
        sleep 60
    done
}

synclient TapButton1=1 FingerLow=30 FingerHigh=40
xrdb -load "$HOME"/.Xresources
xhost +local:
battery &
feh --bg-scale "$HOME"/.wallpapers/gradient-cyan.png
sil slstatus &
exec dwm
