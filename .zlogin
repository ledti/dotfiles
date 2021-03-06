#!/bin/zsh

# source zshenv:
[[ -f $HOME/.zshenv ]] && source $HOME/.zshenv

# startx at login if vt1:
if [[ -z $DISPLAY && $XDG_VTNR -eq 1 && $USER != root ]]; then
    xinit -- vt1 -keeptty &> $HOME/.xsession_log
    logout
fi
