#!/bin/sh
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory beep extendedglob nomatch notify
unsetopt autocd
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
export GOPATH=~/go

PATH=$PATH:~/.gem/ruby/2.3.0/bin
PATH=$PATH:~/node/bin
PATH=$PATH:~/go/bin

alias g='git'
alias tf='terraform'
alias ls='ls --color=auto'

# Docker
alias dpurgec='sudo docker stop $(docker ps -a -q) && sudo docker rm $(docker ps -a -q)'
alias dpurgei='sudo docker rmi $(docker images -q);'

#shellcheck source=/dev/null
source /usr/share/doc/pkgfile/command-not-found.zsh
#shellcheck source=/dev/null
source /usr/share/zsh/share/antigen.zsh
#shellcheck source=/dev/null
source /usr/share/doc/pkgfile/command-not-found.bash
#shellcheck source=/dev/null
source $HOME/.git-prompt.sh
#shellcheck source=/dev/null
source $HOME/.homesick/repos/homeshick/homeshick.sh

antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions src
antigen bundle terraform
antigen bundle git
antigen bundle npm
antigen bundle lein
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure
antigen apply

eval "`dircolors ~/.config/terminal/dircolors-solarized/dircolors.256dark`"
sh ~/.config/terminal/guake-colors-solarized/set_dark.sh

homeshick --quiet refresh
source /usr/share/nvm/init-nvm.sh
