#! /bin/bash

set -e

if command -v ghostty >& /dev/null; then
    echo "ghostty is already installed, skipping."
else
    echo "Installing ghostty..."
    snap install ghostty --classic
fi
