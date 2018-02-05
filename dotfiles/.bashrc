# Aliases
alias ll='ls -lah'
alias gits='git'

# Configurations

## bash complete
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
  . `brew --prefix`/etc/bash_completion.d/git-prompt.sh
fi

## Update prompt
export PS1='\w$(__git_ps1 " (%s)") \$ '

## nvm configuration
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

## So I don't have to "npm install -g" binaries
export PATH="./node_modules/.bin:${PATH}"
## Keep notes in dropbox
export NOTEM_PATH="$HOME/Dropbox/notes"

# Functions

## Start a shell in a docker container
dbash(){
  docker exec -it $1 env TERM=xterm bash
}
## git add with grep
gadd() {
  git status -sb | grep initializers | cut -f3 -d ' ' | xargs git add
}
