#!/usr/bin/env bash

set -u

DOTPATH="$HOME/dotfiles"

if [ ! -e "$DOTPATH" ]; then
  echo "Error: Directory $DOTPATH does not exist."
  exit 1
fi

cd "$DOTPATH" || exit 1

for file in .??*; do
  [[ "$file" = ".git" ]] && continue
  [[ "$file" = ".DS_Store" ]] && continue
  ln -fhvs "$DOTPATH/$file" "$HOME/$file"
done

ln -fhvs "$DOTPATH/docker-compose.yml" "$HOME/docker-compose.yml"
