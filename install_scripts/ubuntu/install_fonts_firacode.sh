#! /bin/bash

set -e

if dpkg -l | grep fonts-firacode >& /dev/null; then
    echo "fonts-firacode is already installed, skipping."
else
    echo "Installing fonts-firacode..."
    sudo apt-get -y install fonts-firacode
fi
