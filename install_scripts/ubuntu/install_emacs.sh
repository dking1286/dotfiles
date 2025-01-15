#! /bin/bash

set -e

if command -v emacs >& /dev/null; then
    echo "Emacs is already installed, skipping."
else
    echo "Installing Emacs"
    sudo apt-get -y install emacs
fi