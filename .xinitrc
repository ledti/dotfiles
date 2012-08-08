#!/bin/sh

# apps:
xcompmgr &
feh --bg-fill "$(find ~/Pictures/wallpapers -type f | shuf -n1)" &
dunst &
redshift -l LAT:LONG -t 6000:4500 &

# configure blank/dpms timeout:
xset s 3600 3600 && xset dpms 3650 3700 3750

# source .Xresources:
xrdb -merge "$HOME/.Xresources"

# launch wm:
exec ck-launch-session i3
