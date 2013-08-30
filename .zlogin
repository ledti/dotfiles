#!/bin/zsh

# source zshenv:
. "$HOME/.zshenv"

# init_tty1:
if [[ -z $DISPLAY ]] && [[ $XDG_VTNR = 1 ]] && [[ $(whoami) != root ]]; then
    startx &> "$HOME/.xsession_log"
    logout
fi
