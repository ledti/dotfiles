# set path:
typeset -U path
path=($HOME/.bin $path)

# set local variables:
export TERM=vte-256color
export TERMINAL=termite
export TERMCMD="$TERMINAL"
export EDITOR=vim
export VISUAL=subl3
export BROWSER=chromium
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export LIBVA_DRIVER_NAME=vdpau
export VDPAU_DRIVER=r600
export MPV_HOME=$HOME/.config/mpv
