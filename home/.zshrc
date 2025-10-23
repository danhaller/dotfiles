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
PATH=$PATH:~/.bun/bin
PATH=$PATH:~/node/bin
PATH=$PATH:~/go/bin

fpath+=("$(brew --prefix)/share/zsh/site-functions")

alias g='git'
alias tf='terraform'
alias ls='ls -G'
alias copy='xclip -selection clipboard'
alias paste='xclip -selection clipboard -o'

# Docker
alias dpurgec='sudo docker stop $(docker ps -a -q) && sudo docker rm $(docker ps -a -q)'
alias dpurgei='sudo docker rmi $(docker images -q);'

#shellcheck source=/dev/null
source $HOME/.git-prompt.sh
#shellcheck source=/dev/null
source $HOME/.homesick/repos/homeshick/homeshick.sh
source <(fzf --zsh)
eval "$(zoxide init zsh)"

# Initialize antidote plugin manager
source /opt/homebrew/opt/antidote/share/antidote/antidote.zsh
antidote load

autoload -U promptinit; promptinit
prompt pure

homeshick --quiet refresh

export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && . "$(brew --prefix)/opt/nvm/nvm.sh" # This loads nvm
[ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && . "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

# Auto-switch node version based on .nvmrc
if command -v nvm &> /dev/null; then
  autoload -U add-zsh-hook

  load-nvmrc() {
    local nvmrc_path
    nvmrc_path="$(nvm_find_nvmrc)"

    if [ -n "$nvmrc_path" ]; then
      local nvmrc_node_version
      nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

      if [ "$nvmrc_node_version" = "N/A" ]; then
        nvm install
      elif [ "$nvmrc_node_version" != "$(nvm version)" ]; then
        nvm use
      fi
    elif [ -n "$(PWD=$OLDPWD nvm_find_nvmrc)" ] && [ "$(nvm version)" != "$(nvm version default)" ]; then
      echo "Reverting to nvm default version"
      nvm use default
    fi
  }

  add-zsh-hook chpwd load-nvmrc
  load-nvmrc
fi

# opam configuration
[[ ! -r /Users/dhaller/.opam/opam-init/init.zsh ]] || source /Users/dhaller/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

PATH=$(pyenv root)/shims:$PATH
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# bun completions
[ -s "/Users/dhaller/.bun/_bun" ] && source "/Users/dhaller/.bun/_bun"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"

mkcd () {
  \mkdir -p "$1"
  cd "$1"
}

today () {
  date "+%l:%M%p on %A, %B %e, %Y"
  echo
  cal | grep -E "\b$(date '+%e')\b| "
}

