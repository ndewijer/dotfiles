#!/usr/bin/env bash
echo "Installing base packages"
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
    docker-compose
    gdbm
    geoip
    gettext
    git
    git-lfs
    htop
    icu4c
    libdvdcss
    libidn2
    libunistring
    links
    mono
    nmap
    node
    node-build
    nodenv
    openssl
    openssl@1.1
    pcre
    pkg-config
    python
    python3
    qt
    readline
    rename
    sphinx-doc
    sqlite
    ssh-copy-id
    the_silver_searcher
    tmux
    tmux
    todolist
    tree
    unrar
    watch
    watchman
    wget
    yarn
    z
    zsh
    zsh-syntax-highlighting
)

echo "Installing packages..."
brew install ${PACKAGES[@]}