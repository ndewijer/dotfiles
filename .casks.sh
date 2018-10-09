#!/usr/bin/env bash

CASKS=(
    ableton-live-lite
    android-file-transfer
    applepi-baker
    arduino
    blender
    calibre
    chefdk
    cool-retro-term
    docker
    dropbox
    firefox
    fritzing
    google-chrome
    gitkraken
    handbrake
    iterm2
    java
    powershell
    skype
    slack
    sourcetree
    superduper
    the-unarchiver
    tunnelblick
    vagrant
    virtualbox
    visual-studio
    vivaldi
    vlc
    vyprvpn
)

echo "Installing cask apps..."
brew cask install ${CASKS[@]}
