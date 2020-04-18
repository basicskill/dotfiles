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
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Load aliases
[ -f ~/.shell_aliases ] && . ~/.shell_aliases

# Functions 
cheat() { curl cheat.sh/$1 }
hotspot() { sudo create_ap wlp3s0 enp0s25 "Mladenov ThinkPad" raskoljnikov }

# Scripts
export PATH=~/.scripts:$PATH
export PATH=~/.local/share/jdk1.8.0_181/bin:$PATH
export PATH=~/.gem/ruby/2.5.0/bin:$PATH

export working='/home/mladen/fax/s4/JMF/projekat'

export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
