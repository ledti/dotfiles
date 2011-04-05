#!/usr/bin/env bash

# init_X:
xrdb -merge "$HOME/.Xresources" &
on_ac_power &
syndaemon -t -k &
start-pulseaudio-x11 &

# wm:
exec ck-launch-session i3
