#!/bin/bash

which brew
if [ $? -eq 0 ]; then
    echo brew installed; exit 0
fi

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update && brew upgrade
brew install nvm
brew install git
brew install wget

nvm install 4
