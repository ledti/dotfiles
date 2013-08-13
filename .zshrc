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
#setopt null_glob

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
alias sop="sudo $EDITOR"
alias co="cower -c -f -t $HOME/builds" && compdef co=cower
alias pb="pbget --dir $HOME/builds"

sdm() {

    # create device aliases:
    for device in /dev/sd[^ab]*(N); do
        alias ${device#/dev/}m="udisksctl mount -b $device"
        alias ${device#/dev/}u="udisksctl unmount -b $device"
    done

#    local device
#    unalias -m "sd[[:alpha:]]*"
#    device=(/dev/sd[[:alpha:]]*)
#    device=${device#/dev/}
#    echo $device
}

sdm
#unset -f sdm

