#! /bin/bash

set -e

if command -v entr >& /dev/null; then
    echo "entr is already installed, skipping."
else
    echo "Installing entr..."
    sudo apt-get -y install entr
fi
