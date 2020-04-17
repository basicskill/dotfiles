# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
LANGUAGES="us,rs,rs"
VARIANT=",latinunicode,"

setxkbmap -layout "$LANGUAGES" -variant "$VARIANT" -option grp:alt_shift_toggle

export TERMINAL="urxvt"
export BROWSER="qutebrowser"
export VISUAL="nvim"

compton &
flameshot &
sxhkd ~/.config/sxhkd/sxhkdrc &
xset r rate 280 40
#/home/mladen/.config/polybar/scripts/launcher.sh &
xmodmap ~/.Xmodmap
feh --bg-scale /home/mladen/wallpapers/.wall
