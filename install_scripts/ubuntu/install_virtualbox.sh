#! /bin/bash

set -e

if command -v virtualbox >& /dev/null; then
    echo "Virtualbox is already installed, skipping."
else
    echo "Installing Virtualbox..."
    sudo apt-get install virtualbox
fi