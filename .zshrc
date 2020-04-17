# export TERM="xterm-256color"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# powerline-daemon -q
# . /usr/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh

# Path to your oh-my-zsh installation.
export ZSH="/home/mladen/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

ZSH_THEME="gnzh"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration
export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
# prompt
# autoload -Uz promptinit
# promptinit
# ssh
autoload -Uz compinit
compinit
# Completion for kitty
# kitty + complete setup zsh | source /dev/stdin
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
export VISUAL="nvim"
# Scripts
export PATH=~/.scripts:$PATH
export PATH=~/.local/share/jdk1.8.0_181/bin:$PATH
export PATH=~/.gem/ruby/2.5.0/bin:$PATH


# functions 
cheat() { curl cheat.sh/$1 }
hotspot() { sudo create_ap wlp3s0 enp0s25 "Mladenov ThinkPad" raskoljnikov }

export working='/home/mladen/fax/s4/JMF/projekat'

# Aliases
if [ -f ~/.shell_aliases ]; then
    . ~/.shell_aliases
fi
# User specific aliases and functions
alias reload=". ~/.zshrc && echo 'ZSH reloaded'"
alias ll="ls -lh --color"
alias ls="ls --color"
alias v="nvim"
alias ov="vim"
alias sv="sudo vim"
alias pi="ipython"
alias bp="bpython"
alias p="python3"
alias sp="sudo python"
alias cw='cd "$working"'
alias xcopy="xclip -selection c"
alias xpaste="xclip -selection c -o"
alias open="xdg-open" 
alias jew="jupyter notebook"
alias youtube="mpsyt"
alias 666="chmod 777"

# Sudo
alias pacman="sudo pacman"
alias pc="sudo pacman"
alias pip="sudo pip"
alias pipp="sudo pip --proxy $http_proxy"
alias mount="sudo mount"
alias umount="sudo umount"

# telefon
# alias telefon="simple-mtpfs"
# alias utelefon="fusermount -u"

# dmenu
alias dmenu="dmenu -nb '#101010' -nf '#ddd' -sb '#385e6b' -sf '#101010'"

# Git config for dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

PATH="/home/mladen/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/mladen/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/mladen/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/mladen/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/mladen/perl5"; export PERL_MM_OPT;
