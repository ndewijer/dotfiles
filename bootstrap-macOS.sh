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
brew install coreutils
brew install gnu-sed --with-default-names
brew install gnu-tar --with-default-names
brew install gnu-indent --with-default-names
brew install gnu-which --with-default-names
brew install gnu-grep --with-default-names

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install Bash 4
brew install bash

PACKAGES=(
    ack
    autoconf
    automake
    bash-completion
    gdbm
    gettext
    icu4c
    libdvdcss
    libidn2
    node
    pkg-config
    ssh-copy-id
    zsh
    node-build
    python
    python3
    todolist
    zsh-syntax-highlighting
    nodenv
    qt
    watchman
    libunistring
    openssl
    readline
    wget
    mono
    openssl@1.1
    sphinx-doc
    yarn
    nmap
    pcre
    sqlite
    tmux
    git
    git-lfs
    tree
    z
    docker-compose
    htop
    links
    geoip
    watch
    tmux
    unrar
    the_silver_searcher
    rename
)

echo "Installing packages..."
brew install ${PACKAGES[@]}

echo "Cleaning up..."
brew cleanup

echo "Installing casks..."
brew install caskroom/cask/brew-cask

CASKS=(
    dropbox
    firefox
    google-chrome
    iterm2
    skype
    slack
    vagrant
    virtualbox
    vlc
    vivaldi
    google-chrome
    calibre
    cool-retro-term
    fritzing
    handbrake
    sourcetree
    superduper
    arduino
    the-unarchiver
    tunnelblick
    visual-studio
    visual-studio-code
    vyprvpn
    docker
    blender
    android-file-transfer
    ableton-live-lite
    applepi-baker
)


echo "Installing cask apps..."
brew cask install ${CASKS[@]}

echo "Installing fonts..."
brew tap caskroom/fonts
FONTS=(
    font-inconsolidata
    font-roboto
    font-clear-sans
)
brew cask install ${FONTS[@]}

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

echo "Bootstrapping complete"