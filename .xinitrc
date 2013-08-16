#!/bin/bash

# start apps:
nitrogen --restore &
redshift -l LAT:LONG -t 6000:4800 &
pulseaudio --start &
dunst &
system-config-printer-applet &
compton -c -o 0.25 -l -9 -t -9 -r 6 &
xmodmap -e "add mod3 = Scroll_Lock" &
#compton --opengl --vsync opengl-swc --paint-on-overlay -c -o 0.25 -l -9 -t -9 -r 6 &
#conky -c "$HOME/.scripts/conkyrc_journalctl" &

# launch wm:
exec i3

