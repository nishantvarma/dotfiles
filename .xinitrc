#!/usr/bin/env bash

export GDK_BACKEND=x11

touchpad &&
xrdb -load "$HOME"/.Xresources &&
xhost +local: &&
feh --bg-scale "$HOME"/.wallpapers/gradient-cyan.png &&
exec qtile start
