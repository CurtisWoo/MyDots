#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -la'
alias ..='cd .. && ls'
alias ...='cd ../.. && ls'
alias gop='cd /home/curtis/go/src && ls'

export GOPATH=/home/curtis/go
export GOBIN=/home/curtis/go/bin
export PATH=$PATH:/usr/local/go/bin:$GOBIN

source /home/curtis/.git-prompt.sh

LS_COLORS="di=01;33"
export LS_COLORS

PS1='\u@\h \[\033[38;5;214m\]\w\[\033[1;38;5;226m\]$(__git_ps1 "(%s)")\[\033[0m\] $ '
