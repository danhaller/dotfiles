#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias g='git'

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
source /usr/share/doc/pkgfile/command-not-found.bash
