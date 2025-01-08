#! /bin/bash

set -e

if command -v emacs >& /dev/null; then
    echo "Emacs is already installed, skipping."
else
    echo "Installing Emacs to $HOME/bin"
    # Install upstream dependencies
    sudo apt-get install -y build-essential texinfo libx11-dev libxpm-dev libjpeg-dev libpng-dev libgif-dev libtiff-dev libgtk2.0-dev libncurses-dev gnutls-dev libgtk-3-dev

    # Clone the emacs repo
    git clone https://github.com/emacs-mirror/emacs.git

    # Build emacs from source
    cd emacs
    ./autogen.sh
    ./configure --prefix=$HOME
    make
    sudo make install
fi