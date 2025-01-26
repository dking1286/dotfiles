#! /bin/bash

set -e

if command -v tmux >& /dev/null; then
    echo "tmux is already installed, skipping."
else
    echo "Installing tmux..."
    sudo apt-get -y install tmux
fi
