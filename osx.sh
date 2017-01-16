#!/bin/bash

which brew
if [ $? -eq 0 ]; then
    echo brew is already installed;
else
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

brew update && brew upgrade
brew install nvm
brew install git
brew install wget
brew install golang
brew install maven
brew install ghostscript
brew install ansible 
