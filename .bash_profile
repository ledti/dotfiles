# source:
. "$HOME/.bashrc"

# init_tty1:
if [[ -z "$DISPLAY" ]] && [[ $(tty) = /dev/tty1 ]] && [[ "$(whoami)" != "root" ]]; then
	startx &> "$HOME/.xsession_log"
	logout
fi
