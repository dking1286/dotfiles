#! /bin/bash

set -e

if command -v kotlinc >& /dev/null; then
    echo "kotlin is already installed, skipping."
else
    echo "Installing kotlin..."
    sudo snap install --classic kotlin
fi
