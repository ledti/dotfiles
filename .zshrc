#!/bin/zsh

# check interactive:
[[ $- != *i* ]] && return

# source files:
. "$HOME/.scripts/bash/private"

# set history options:
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# set zsh options:
setopt autocd
setopt extendedglob
setopt banghist
setopt incappendhistory
setopt correct
setopt completealiases

autoload -U compinit colors
compinit
colors

zstyle ":completion:*" rehash true
zstyle ":completion:*" menu select
zstyle ":completion:*" matcher-list "" "m:{a-zA-Z}={A-Za-z}"

# set prompt:
PROMPT=" %* %{$fg_no_bold[green]%}%n%{$reset_color%}@%{$fg_no_bold[magenta]%}%m%{$reset_color%}%1(j. %j.) %{$fg_no_bold[blue]%}%~%{$reset_color%} %# "
RPROMPT="[%{$fg_no_bold[yellow]%}%?%{$reset_color%}]"

# set keybinds:
bindkey "^R" history-incremental-search-backward
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

# set aliases:
alias c="clear"
alias e="exit"
alias p="pacman" && compdef p="pacman"
alias sp="sudo pacman" && compdef sp="pacman"
alias spu="sudo pacman -Syu" && compdef spu="pacman"
alias spr="sudo pacman -Rsn" && compdef spr="pacman"
alias spc="sudo pacman -Sc" && compdef spc="pacman"
alias op="$EDITOR" && compdef op="$EDITOR"
alias sop="sudoedit" && compdef sop="sudoedit"
alias co="cower -c -f -t $HOME/builds" && compdef co="cower"
alias pb="pbget --dir $HOME/builds"
alias root="sudo -i"
