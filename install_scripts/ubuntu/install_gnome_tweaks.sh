#! /bin/bash

set -e

if command -v gnome-tweaks >& /dev/null; then
    echo "gnome-tweaks is already installed, skipping."
else
    echo "Installing gnome-tweaks..."
    sudo apt-get -y install gnome-tweaks
fi
