#!/bin/sh

echo "\nInstalling HomeBrew..."
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "\nInstalling zsh..."
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "\nUpdating Brew and Installing Git..."
brew update && brew install git
echo "\nDefining git aliases..."
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
echo "\nInstalling Python..."
brew install python
echo "\nInstalling Pip..."
easy_install pip
echo "\nInstalling Virtualenv..."
pip install virtualenv
echo "\nInstalling NodeJs and NPM..."
brew install node
echo "\nInstalling Golang..."
brew install go
echo "\nInstalling Jekyll..."
gem install jekyll
echo "\nInstalling Mosh..."
brew install mosh
echo "\nInstalling Tmux..."
brew install tmux

