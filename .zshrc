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
setopt completealiases
setopt correct
setopt extendedglob
setopt histignorealldups
setopt histignorespace
setopt incappendhistory

autoload -U compinit colors history-search-end
compinit
colors

zstyle ":completion:*" menu select
zstyle ":completion:*" matcher-list "m:{a-zA-Z}={A-Za-z}"

zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

# set prompt:
PROMPT="%{$fg_no_bold[green]%}%n%{$reset_color%}@%{$fg_no_bold[magenta]%}%m%{$reset_color%}%1(j. [%j].) %{$fg_bold[cyan]%}%~%{$reset_color%} %# "

# set bindings:
bindkey "^R" history-incremental-search-backward
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end
bindkey "^[[1;3C" forward-word
bindkey "^[[1;3D" backward-word

# set aliases:
alias c="clear"
alias clearmem="echo 'echo 3 > /proc/sys/vm/drop_caches' | sudo sh"
alias co="cower -c -f -t $HOME/builds/arch" && compdef co=cower
alias cp="cp -i"
alias decrypt="gpg"
alias df="df -h"
alias du="du -sch"
alias e="exit"
alias encrypt="gpg -c"
alias grep="grep --color=auto"
alias histkill="history -c && history -w"
alias inbound="ss -putr"
alias lf="lsblk -f"
alias ln="ln -i"
alias ls="ls -1 --color=auto"
alias mv="mv -i"
alias myip="curl icanhazip.com"
alias op="vim"
alias p="pacman" && compdef p=pacman
alias pb="pbget --dir $HOME/builds/arch"
alias perm="stat -c %a %n"
alias rm="rm -I"
alias root="sudo -Es"
alias service="sudo systemctl" && compdef service=systemctl
alias sop="sudo -Es $EDITOR"
alias sp="sudo pacman" && compdef sp=pacman
alias spc="paccache -v -r -u -k 0"
alias spi="sudo pacman -S"
alias spr="sudo pacman -Rsn"
alias spu="sudo pacman -Syu"
alias syschk="systemctl --failed && journalctl -p 0..3 -xn"
alias tarsnap="tarsnap --configfile $HOME/.config/tarsnap/tarsnaprc"
