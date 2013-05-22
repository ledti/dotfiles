# source:
. /etc/udisks_functions/udisks_functions

# ps1:
export PS1="\[$(tput bold)\][\[$(tput sgr0)\]\t\[$(tput bold)\]] [\[$(tput sgr0)\]\w\[$(tput bold)\]]\[$(tput sgr0)\] \\$ "

# export:
export PATH="$HOME/.bin:$PATH"
export TERM=xterm-256color
export TERMINAL=evilvte
export BROWSER=chromium
export EDITOR=vim
export VISUAL=gedit
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true"

# alias essentials:
alias c=clear
alias e=exit
alias p=pacman
alias sp="sudo pacman"
alias op="$EDITOR"
alias sop="sudo $EDITOR"
alias co="cower -c -f -t $HOME/Builds"
