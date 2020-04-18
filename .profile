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
