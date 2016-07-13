#!/bin/sh

echo "\nInstalling HomeBrew..."
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "\nInstalling zsh..."
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
chsh -s /bin/zsh
echo "\nUpdating Brew and Installing Git..."
brew update && brew install git
echo "\nDefining git aliases..."
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global user.name "Raphael Amorim"
git config --global user.email rapha850@gmail.com
git config --global core.editor vim
echo "\nInstalling Z..."
brew install z
echo ". `brew --prefix`/etc/profile.d/z.sh" >> $HOME/.zshrc
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

