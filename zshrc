# Mladen's zsh configuration

# Shell teme
ZSH_THEME="gnzh"


# oh-my-zsh configuration
export ZSH="/home/mladen/.oh-my-zsh"

plugins=(
  git
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh


# User configuration
export MANPATH="/usr/local/man:$MANPATH"
autoload -Uz compinit
compinit

# Load aliases
[ -f ~/.shell_aliases ] && . ~/.shell_aliases

# Functions 
cheat() { curl cheat.sh/$1 }
hotspot() { sudo create_ap wlp3s0 enp0s25 "Mladenov ThinkPad" raskoljnikov }

# If exists, load working directory location
[ -f ~/.working ] && . ~/.working
