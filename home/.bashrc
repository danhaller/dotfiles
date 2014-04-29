#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
alias g='git'

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
source $HOME/.git-prompt.sh
source /usr/share/doc/pkgfile/command-not-found.bash

homeshick --quiet refresh