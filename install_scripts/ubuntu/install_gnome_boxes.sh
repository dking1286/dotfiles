#! /bin/bash

set -e

if command -v gnome-boxes >& /dev/null; then
    echo "GNOME Boxes is already installed, skipping."
else
    echo "Installing GNOME Boxes..."
    sudo apt-get -y install gnome-boxes
fi