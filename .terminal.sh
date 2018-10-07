#!/usr/bin/env bash

# https://github.com/bhilburn/powerlevel9k/wiki/Show-Off-Your-Config


echo "Installing iTerm2"
brew cask install iterm2

echo "Installing Oh My ZSH"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Installing Powerlevel9K for zsh"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

echo "Installing zsh syntax highlighting"
brew install zsh-syntax-highlighting

