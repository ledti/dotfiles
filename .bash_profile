#!/bin/bash

# source .bashrc if it exists:
[[ -f $HOME/.bashrc ]] && source $HOME/.bashrc

# set path:
PATH="$PATH:$HOME/.local/bin:`ruby -e 'print Gem.user_dir'`/bin"

# startx at login if vt1:
if [[ -z $DISPLAY && $XDG_VTNR -eq 1 && $USER != root ]]; then
    startx
    logout
fi
