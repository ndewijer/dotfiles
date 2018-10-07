#!/usr/bin/env bash
echo "Installing fonts..."
brew tap caskroom/fonts
FONTS=(
    font-roboto
    font-clear-sans
    font-source-code-pro-for-powerline
    font-meslo-for-powerline
)
brew cask install ${FONTS[@]}