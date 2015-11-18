#!/bin/bash

#rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
#	--exclude "README.md" --exclude "LICENSE.txt" -avh --no-perms . ~;
#source ~/.zshrc;

for DOTFILE in `find /Users/nimrod/.dotfiles -maxdepth 1 -name '\.*'`
do
  [ -f "$DOTFILE" ] && source "$DOTFILE"
done
