#!/bin/bash

# run:
compton -c -o 0.25 -l -9 -t -9 -r 6 --vsync drm --paint-on-overlay &
redshift &
pulseaudio --start &
dunst &
wacom_set &
xrdb $HOME/.Xresources &
nitrogen --restore &
xrandr --output "HDMI-0" --off &
exec i3
