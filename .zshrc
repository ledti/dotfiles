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

autoload -U compinit
compinit

zstyle ":completion:*" rehash true
zstyle ":completion:*" menu select

# keybinds:
bindkey "^R" history-incremental-search-backward
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

# set prompt:
PROMPT="%B[%b%*%B]%b%1(j. %B[%b%j%B]%b.) %B[%b%~%B]%b %# "

# aliases:
alias c=clear
alias e=exit
alias p=pacman
alias sp="sudo pacman"
alias spc="sudo pacman -Sc"
alias op="$EDITOR"
alias sop="sudo $EDITOR"
alias co="cower -c -f -t $HOME/Builds"
alias pb="pbget --dir $HOME/Builds"
