#!/usr/bin/env bash

export GDK_BACKEND=x11

touchpad &&
xrdb -load "$HOME"/.Xresources &&
xhost +local: &&
feh --bg-scale "$HOME"/.wallpapers/solid-gray.jpg &&
exec dwm
