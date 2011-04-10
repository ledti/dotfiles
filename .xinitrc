#!/usr/bin/env bash

# init_X:
xrdb -merge "$HOME/.Xresources"
on_ac_power
start-pulseaudio-x11

# programs (&):
syndaemon -t -k &

# wm:
exec ck-launch-session i3
