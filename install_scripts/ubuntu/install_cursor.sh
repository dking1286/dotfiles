#! /bin/bash

set -e

if command -v cursor >& /dev/null; then
    echo "cursor is already installed, skipping."
else
    echo "Installing cursor..."
    
    # Install dependencies
    sudo apt-get update && sudo apt-get -y install libfuse2

    # Download the Cursor appimage into my local bin
    mkdir -p $HOME/bin/cursor
    wget -O $HOME/bin/cursor/cursor.AppImage "https://downloads.cursor.com/production/979ba33804ac150108481c14e0b5cb970bda3266/linux/x64/Cursor-1.1.3-x86_64.AppImage"
    chmod +x $HOME/bin/cursor/cursor.AppImage

    # Add an alias for cursor to the .profile
    echo "# Alias for Cursor application" >> $HOME/.profile
    echo "alias cursor='~/bin/cursor/cursor.AppImage --no-sandbox'" >> $HOME/.profile
fi
