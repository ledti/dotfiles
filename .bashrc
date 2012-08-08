# source:
. /etc/udisks_functions/udisks_functions
. "$HOME/.scripts/systemd_functions"

# completion:
set show-all-if-ambiguous on
complete -cf sudo
complete -cf man

# ps1:
PS1="\[$(tput bold)\]\[$(tput setaf 7)\][\t] \[$(tput setaf 3)\][\w] \[$(tput setaf 7)\]$ \[$(tput sgr0)\]"

# export:
export BROWSER=firefox
export EDITOR=nano
export PATH=$PATH:~/.bin/
export VISUAL=geany
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
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
alias nano="nano -Y conf"
alias co="cower -t $HOME/Builds -cf"
alias gsync="grive -p /home/timothy/Desktop/Google\ Drive/"

# colorize commands:
alias ls="ls --color=auto"
alias ll="ls -lh --color=auto"
alias la="ls -a --color=auto"
alias grep="grep --color=auto"
