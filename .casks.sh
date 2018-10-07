#!/usr/bin/env bash

CASKS=(
    ableton-live-lite
    android-file-transfer
    applepi-baker
    arduino
    blender
    calibre
    cool-retro-term
    docker
    dropbox
    firefox
    fritzing
    google-chrome
    handbrake
    iterm2
    java
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
