#! /bin/bash

set -e

if command -v slack >& /dev/null; then
    echo "slack is already installed, skipping."
else
    echo "Installing slack..."
    sudo snap install slack
fi
