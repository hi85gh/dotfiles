#!/usr/bin/env bash

set -eu

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
