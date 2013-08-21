# source files:
source $HOME/.scripts/bash/private

# history file:
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# set options:
setopt autocd
setopt extendedglob
setopt banghist
setopt incappendhistory
setopt correct
setopt completealiases

autoload -Uz compinit
compinit

zstyle ":completion:*" rehash true
zstyle ":completion:*" menu select
zstyle ":completion:*" matcher-list "" "m:{a-zA-Z}={A-Za-z}"

# keybinds:
bindkey "^R" history-incremental-search-backward
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

# set prompt:
PROMPT="%B[%b%*%B]%b%1(j. %B[%b%j%B]%b.) %B[%b%~%B]%b %# "

# aliases:
alias c=clear
alias e=exit
alias p=pacman && compdef p=pacman
alias sp="sudo pacman" && compdef sp=pacman
alias spu="sudo pacman -Syu" && compdef spu=pacman
alias spc="sudo pacman -Sc"
alias op="$EDITOR"
alias sop="sudoedit"
alias co="cower -c -f -t $HOME/builds" && compdef co=cower
alias pb="pbget --dir $HOME/builds"

