#!/bin/zsh

# set path:
typeset -U path
path=($HOME/.local/bin $HOME/.local/lib $HOME/.gem/ruby/2.2.0/bin $path)

# set local variables:
export BROWSER="chromium"
export CCACHE_DIR="$HOME/.cache/ccache"
export EDITOR="nvim"
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export SUDO_EDITOR="$EDITOR"
export TERMINAL="termite"
export TERMCMD="$TERMINAL"
export _JAVA_OPTIONS="-Dswing.aatext=true"
