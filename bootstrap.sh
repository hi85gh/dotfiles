#!/usr/bin/env bash

set -eu

# Install nvm: https://github.com/creationix/nvm#git-install
NVM_DIR=$HOME/.nvm

if [ ! -d "$NVM_DIR" ]; then
  (
    git clone https://github.com/creationix/nvm.git "$NVM_DIR"
    cd "$NVM_DIR"
    git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
  ) && \. "$NVM_DIR/nvm.sh"
  echo
else
  echo "$NVM_DIR already downloaded. Updating..." && (
    cd "$NVM_DIR"
    git fetch --tags origin
    git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
  ) && \. "$NVM_DIR/nvm.sh"
  echo
fi

# Install Node.js
if type nvm > /dev/null 2>&1; then
  nvm install node  # Current
  nvm install --lts # LTS
  nvm alias default lts/*
  echo
fi

# Download dotfiles
DOTPATH=$HOME/dotfiles

if [ ! -d "$DOTPATH" ]; then
  git clone https://github.com/hi85gh/dotfiles.git "$DOTPATH"
else
  echo "$DOTPATH already downloaded. Updating..."
  cd "$DOTPATH"
  git stash
  git checkout master
  git pull origin master
  echo
fi

cd "$DOTPATH"

# deploy dotfiles
scripts/deploy.sh
echo

# Install Homebrew: https://brew.sh/
if ! command -v brew > /dev/null 2>&1; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  echo
fi

# Install formulae and macOS applications
brew bundle --global
echo

echo "Bootstrapping done!"
