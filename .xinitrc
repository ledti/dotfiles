#!/usr/bin/env bash

# init_X:
xrdb -merge "$HOME/.Xresources"
upower -e
start-pulseaudio-x11
urxvtd -q -o -f

# programs (&):
syndaemon -t -k &
redshift -t 5500:4500 &

# wm:
exec ck-launch-session i3
