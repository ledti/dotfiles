#!/bin/bash

# run:
compton -c -o 0.25 -l -9 -t -9 -r 6 &
dunst &
pulseaudio --start &
redshift &
wacom_set &
eval $(cat ~/.fehbg) &
exec i3
