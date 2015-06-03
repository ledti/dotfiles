#!/bin/bash

# if not running interactively, don't do anything:
[[ $- != *i* ]] && return

# set bash variables:
HISTFILESIZE="5000"
HISTSIZE="5000"
PROMPT_COMMAND="history -a"
PS1="\[\e[32m\]\u\[\e[m\]@\[\e[35m\]\h\[\e[m\] \W \\$ "

# set additional shell options:
shopt -s autocd
shopt -s cdspell
shopt -s cmdhist
shopt -s dotglob
shopt -s extglob
shopt -s histappend
shopt -s nocaseglob

# set local variables:
export BROWSER="chromium"
export CCACHE_DIR="$HOME/.cache/ccache"
export EDITOR="vim"
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export SUDO_EDITOR="$EDITOR"
export TERMINAL="termite"
export TERMCMD="$TERMINAL"
export QT_STYLE_OVERRIDE="breeze"
export _JAVA_OPTIONS="-Dswing.aatext=true"

# set aliases:
alias c="clear"
alias clearmem="echo 'echo 3 > /proc/sys/vm/drop_caches' | sudo sh"
alias co="cower -c -f -t $HOME/builds"
alias cp="cp -i"
alias df="df -h"
alias du="du -sch"
alias e="exit"
alias grep="grep --color=auto"
alias histkill="history -c && history -w"
alias inbound="ss -putr"
alias lf="lsblk -f"
alias ln="ln -i"
alias ls="ls -1 --color=auto"
alias mv="mv -i"
alias op="vim"
alias p="pacman"
alias pb="pbget --dir $HOME/builds"
alias perm="stat -c %a"
alias rm="rm -I"
alias root="sudo -i"
alias service="sudo systemctl"
alias sop="sudo $EDITOR"
alias sp="sudo pacman"
alias spc="paccache -v -r -u -k 0"
alias spi="sudo pacman -S"
alias spr="sudo pacman -Rsn"
alias spu="sudo pacman -Syu"
alias syschk="systemctl --failed && journalctl -p 0..3 -xn"
alias tarsnap="tarsnap --configfile $HOME/.config/tarsnap/tarsnaprc"
