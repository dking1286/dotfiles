#! /bin/bash

set -e

if which git >& /dev/null; then
    echo "Git is already installed, skipping."
else
    echo "Installing Git..."
    sudo apt-get install -y git
fi
