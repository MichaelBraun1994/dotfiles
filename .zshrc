HISTFILE=~/.histfile
HISTSIZE=100
SAVEHIST=100
bindkey -v
zstyle :compinstall filename '/home/mike/.zshrc'

autoload -Uz compinit
compinit

autoload -Uz promptinit
promptinit

# faster
# zstyle ':completion::complete:*' use-cache 1

# share history betweeen shells 
setopt SHARE_HISTORY

# dont save double executed commands
setopt HIST_IGNORE_ALL_DUPS

#------------------------------
# exports 
#------------------------------
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim
#------------------------------
# aliases
#------------------------------
alias ls='ls --color'
alias tmux='tmux -2 -u'
alias pdfr='apvlv'

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'


cd() { builtin cd "$@" && ls; }

#------------------------------
# Prompt
#------------------------------
autoload -Uz promptinit
promptinit

autoload -U colors && colors

# colors
export PS1="%F{blue}[%F{cyan}%n%F{blue}]%F{blue}[%F{cyan}%~%F{blue}]%{$reset_color%} "

# dotfiles repo
alias config='/usr/bin/git --git-dir=/home/mike/.dotfiles/ --work-tree=/home/mike'
