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

PATH=$PATH:~/.gem/ruby/2.1.0/gems
PATH=$PATH:~/node/bin

alias g='git'
alias ls='ls --color=auto'

#shellcheck source=/dev/null
source /usr/share/doc/pkgfile/command-not-found.zsh
#shellcheck source=/dev/null
source /usr/share/zsh/scripts/antigen/antigen.zsh
#shellcheck source=/dev/null
source /usr/share/doc/pkgfile/command-not-found.bash
#shellcheck source=/dev/null
source $HOME/.git-prompt.sh
#shellcheck source=/dev/null
source $HOME/.homesick/repos/homeshick/homeshick.sh

antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle git
antigen bundle npm
antigen bundle lein
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

eval "dircolors ~/.config/terminal/dircolors-solarized/dircolors.256dark"

homeshick --quiet refresh
