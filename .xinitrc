#!/usr/bin/env bash

touchpad &&
xrdb -load "$HOME"/.Xresources &&
xhost +local: &&
feh --bg-scale "$HOME"/.wallpapers/gradient-cyan.png &&
exec qtile start
