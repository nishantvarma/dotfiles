#!/usr/bin/env bash

source "$HOME"/.bashrc

export GDK_BACKEND=x11

touchpad &&
xrdb -load "$HOME"/.Xresources &&
xhost +local: &&
feh --bg-scale "$HOME"/.wallpapers/solid-gray.jpg &&
sxhkd &
exec bspwm
