#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

eval `dircolors ~/.config/terminal/dircolors-solarized/dircolors.256dark`
alias grep='grep --color'
alias ls='ls --color=auto'

source $HOME/.git-prompt.sh
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
source /usr/share/doc/pkgfile/command-not-found.bash

alias ls='ls --color=auto'
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
alias g='git'


homeshick --quiet refresh