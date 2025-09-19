# Mladen's zsh configuration

# Shell teme
ZSH_THEME="gnzh"


# oh-my-zsh configuration
export ZSH="/home/mladen/.oh-my-zsh"

plugins=(
  git
  virtualenv
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Load aliases
[ -f ~/.shell_aliases ] && . ~/.shell_aliases

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
