#!/bin/bash

# start apps:
nitrogen --restore &
redshift -l LAT:LONG -t 6000:4800 &
pulseaudio --start &
dunst &
system-config-printer-applet &
compton &
conky -c "$HOME/.scripts/conkyrc_journalctl" &

# launch wm:
exec i3
