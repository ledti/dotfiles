#!/bin/bash

# run:
compton -c -o 0.25 -l -9 -t -9 -r 6 --vsync opengl &
xset -dpms s off &
redshift &
dunst &
nitrogen --restore &
unclutter &
exec i3
