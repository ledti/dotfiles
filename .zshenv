# set path:
typeset -U path
path=($HOME/.bin $HOME/.gem/ruby/2.0.0/bin $path)

# set local variables:
export TERM=vte-256color
export TERMINAL=termite
export TERMCMD="$TERMINAL"
export EDITOR=vim
export BROWSER=chromium
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export LIBVA_DRIVER_NAME=vdpau
export VDPAU_DRIVER=r600
export MPV_HOME=$HOME/.config/mpv
export CCACHE_DIR=$HOME/.cache/ccache

