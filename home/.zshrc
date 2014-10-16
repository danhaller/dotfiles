# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory beep extendedglob nomatch notify
unsetopt autocd
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/danh/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
source /usr/share/zsh/scripts/antigen/antigen.zsh
antigen bundle sindresorhus/pure
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle git
antigen bundle npm


source /usr/share/doc/pkgfile/command-not-found.zsh
source "$HOME/.homesick/repos/homeshick/homeshick.sh"
