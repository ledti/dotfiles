#!/bin/zsh

# if not running interactively, don't do anything:
[[ $- != *i* ]] && return

# set history options:
HISTFILE="$HOME/.zhistory"
HISTSIZE="5000"
SAVEHIST="5000"

# set zsh options:
setopt autocd
setopt banghist
setopt correct
setopt extendedglob
setopt incappendhistory

autoload -U compinit colors
compinit
colors

zstyle ":completion:*" rehash true
zstyle ":completion:*" menu select
zstyle ":completion:*" matcher-list "" "m:{a-zA-Z}={A-Za-z}"

# set prompt:
PROMPT="%{$fg_no_bold[green]%}%n%{$reset_color%}@%{$fg_no_bold[magenta]%}%m%{$reset_color%}%1(j. [%j].) %{$fg_bold[cyan]%}%~%{$reset_color%} %# "

# set keybinds:
bindkey "^R" history-incremental-search-backward
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

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