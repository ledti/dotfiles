#!/bin/bash

# run:
compton -c -o 0.25 -l -9 -t -9 -r 6 --vsync opengl &
xset -dpms s off &
wacom-set &
redshift &
pulseaudio --start &
dunst &
nitrogen --restore &
exec i3
