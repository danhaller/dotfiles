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

PATH=$PATH:/home/danh/.gem/ruby/2.1.0/gems

source /usr/share/zsh/scripts/antigen/antigen.zsh
antigen use oh-my-zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle git
antigen bundle npm
antigen bundle rbenv
antigen bundle sindresorhus/pure

source /usr/share/doc/pkgfile/command-not-found.zsh
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
