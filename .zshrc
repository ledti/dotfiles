HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt autocd

autoload -U compinit
compinit

PROMPT="%B[%b%*%B]%b %B[%b%~%B]%b %# "

export PATH="$HOME/.bin:$PATH"
export TERM=xterm-256color
export TERMINAL=evilvte
export BROWSER=chromium
export EDITOR=vim
export VISUAL=gedit
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.aatext=false -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"

alias c=clear
alias e=exit
alias p=pacman
alias sp="sudo pacman"
alias op="$EDITOR"
alias sop="sudo $EDITOR"
alias co="cower -c -f -t $HOME/Builds"
