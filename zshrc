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

# Load aliases
[ -f ~/.shell_aliases ] && . ~/.shell_aliases
