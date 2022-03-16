# Aliases

alias ll='ls -lah'
alias gits='git'

# Configurations

## Update prompt
export PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{240}%1~%f%b $ '

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
