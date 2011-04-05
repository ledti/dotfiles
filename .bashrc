# source:
. "$HOME/.scripts/bash/udisks_functions"

# completion:
set show-all-if-ambiguous on
complete -cf sudo
complete -cf man

# ps1:
PS1='\[\033[1;37m\][\T] \[\033[1;34m\][\w]\[\033[1;37m\] $\[\033[0m\] '

# export:
export RXVT_SOCKET="$HOME/.cache/rxvt-socket"
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export EDITOR=nano
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus

# alias essentials:
alias c=clear
alias e=exit
alias p=pacman
alias sp="sudo pacman"
alias op="$EDITOR"
alias sop="sudo $EDITOR"
alias co="cower -t $HOME/Builds -cf"

# alias miscellaneous:
alias camera="mplayer tv:// -tv driver=v4l2:width=640:height=480:device=/dev/video0 -fps 15 -vf screenshot"
alias openports="netstat --all --numeric --programs --inet"
alias record='arecord -f cd "$(date).wav"'

# colorize commands:
alias ls="ls --color=auto"
alias ll="ls -lh --color=auto"
alias la="ls -a --color=auto"
alias grep="grep --color=auto"
