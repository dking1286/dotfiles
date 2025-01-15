#! /bin/bash

set -e

if command -v obsidian >& /dev/null; then
    echo "obsidian is already installed, skipping."
else
    echo "Installing obsidian..."
    sudo snap install obsidian --classic
fi
