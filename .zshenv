# set path:
typeset -U path
path=($HOME/.bin $path)

# set local variables:
export TERM=vte-256color
export TERMINAL=evilvte
export TERMCMD="$TERMINAL"
export EDITOR=vim
export VISUAL=subl3
export BROWSER=firefox
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true"
export LIBVA_DRIVER_NAME=vdpau
export VDPAU_DRIVER=r600
