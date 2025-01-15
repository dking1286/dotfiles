#! /bin/bash

set -e

if [ -n $(dpkg -l input-remapper 2> /dev/null) ]; then
    echo "input-remapper is already installed, skipping."
else
    echo "Installing input-remapper..."
    sudo apt-get -y install input-remapper
fi
