#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#variables
LS_COLORS="di=01;33"

#aliases
alias ls='ls -X --color=auto'
alias ll='ls -Xl'
alias la='ls -Xla'
alias ..='cd .. && ls'
alias ...='cd ../.. && ls'
alias his='history | tail'

#functions
function gop(){
    godirectory="$GOPATH/src/github.com/CurtisWoo/"
    if [ -d "$godirectory$1" ]; then
        cd $godirectory$1 && ls
    else
        echo "Directory does not exist. Choose from the follow:"
        cd $godirectory && ls 
    fi
}

#exports
export LS_COLORS
export GOPATH=/home/curtis/go
export GOBIN=/home/curtis/go/bin
export PATH=$PATH:/usr/local/go/bin:$GOBIN

#prompt configuration
source /home/curtis/.git-prompt.sh
PS1='\u@\h \[\033[38;5;214m\]\w\[\033[1;38;5;226m\]$(__git_ps1 "(%s)")\[\033[0m\] $ '

#ignore duplicates
HISTCONTROL=ignoreboth:erasedups
