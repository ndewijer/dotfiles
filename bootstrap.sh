#!/usr/bin/env bash
# 
# Script for setting up a new OSX machine
# 
# Apps not included due to no cask being available
#
# Notes:
#
# - If installing full Xcode, it's better to install that first from the app
#   store before running the bootstrap script. Otherwise, Homebrew can't access
#   the Xcode libraries as the agreement hasn't been accepted yet.
#
# Usefull links:
#
# https://github.com/Homebrew/homebrew-cask/blob/master/USAGE.md
# https://gist.github.com/MatthewMueller/e22d9840f9ea2fee4716
#
# For appstore apps
# https://github.com/mas-cli/mas

# TODO NEEDD TO ADD DOCKER-COMPOSE-COMPLETION AND DOCKER-COMPLETION, VS CODE EXTENSIONS
# https://gist.github.com/mdschweda/2311e3f2c7062bf7367e44f8a7aa8b55 - vs code exts
# https://dotfiles.github.io

echo "Starting install of casks and packages"

# Check for Homebrew, install if we don't have it
if test ! $(which brew); then
    echo "Installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

# Install GNU core utilities (those that come with OS X are outdated)
brew tap homebrew/dupes

echo "Starting install of packages"
source ./packages.sh

echo "Cleaning up..."
brew cleanup

echo "Installing casks..."
source ./casks.sh

echo "Starting install of fonts"
source ./fonts.sh

echo "Installing Python packages..."
PYTHON_PACKAGES=(
    ipython
    virtualenv
    virtualenvwrapper
)
sudo pip install ${PYTHON_PACKAGES[@]}

echo "Installing Ruby gems"
RUBY_GEMS=(
    bundler
    filewatcher
    cocoapods
)
sudo gem install ${RUBY_GEMS[@]}

echo "Installing global npm packages..."
npm install marked -g

echo "Configuring OSX..."
source ./config-macOS.sh

echo "Bootstrapping complete"