#!/bin/bash

# This script bootstraps a new Mac computer with the minimal set of programs
# and configurations I'm used to using on my machine. This script is not really
# intended for public use, though others may find useful tidbits in here.
#
set -euxo pipefail

# First install homebrew.
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install git to get dotfiles.
brew install git
mkdir -p ~/code
git clone https://github.com/danpaz/new-mac ~/code/new-mac

# Link dotfiles.
ln -sf ~/code/new-mac/dotfiles/.zshrc ~
ln -sf ~/code/new-mac/dotfiles/.zshenv ~
ln -sf ~/code/new-mac/dotfiles/.gitconfig ~
ln -sf ~/code/new-mac/dotfiles/.tmux.conf ~
ln -sf ~/code/new-mac/dotfiles/.tmux.conf.local ~

# Install node.
#
# nvm needs some extra configuration to work.
brew install nvm
mkdir -p ~/.nvm
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
nvm install --lts

# Install rust and cargo.
curl https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env

# Install notem.
cargo install notem

# Install tmux.
#
# Configuration is already in place at ~/.tmux.conf and ~/.tmux.conf.local.
brew install tmux
