#!/bin/bash

CURR_DIR=$(pwd)
cp nimrod.zsh-theme ~/.oh-my-zsh/themes/ \
	&& cd ~/.oh-my-zsh/themes/ \
	&& git add nimrod.zsh-theme \
	&& git commit -m "custom nimrod theme added"
 
cd $CURR_DIR

rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
	--exclude "README.md" --exclude "LICENSE.txt" \
        --exclude "nimrod.zsh-theme" \
	-avh --no-perms . ~;

cd ~ && source ~/.zshrc;

