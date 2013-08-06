#!/bin/bash

# start apps:
nitrogen --restore &
redshift -l LAT:LONG -t 6000:4800 &
pulseaudio --start &
dunst &
system-config-printer-applet &
compton -Cc -o 0.30 -l -16 -t -16 &
conky -c "$HOME/.scripts/conkyrc_journalctl" &

# launch wm:
exec i3
