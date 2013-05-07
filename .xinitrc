#!/bin/sh

# start apps:
redshift -l 0:0 -t 6000:4800 &
start-pulseaudio-x11 &
nitrogen --restore &
dunst &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
system-config-printer-applet &
compton &

# launch wm:
exec i3
