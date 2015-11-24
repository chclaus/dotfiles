#!/bin/bash

rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
        --exclude "README.md" --exclude "LICENSE.txt" \
        --exclude "nimrod.zsh-theme" \
        -avh --no-perms . ~;

cd ~ && source ~/.zshrc;
