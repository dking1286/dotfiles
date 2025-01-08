#! /bin/bash

set -e

if command -v jetbrains-toolbox >& /dev/null; then
    echo "Jetbrains Toolbox is already installed, skipping."
else
    echo "Installing Jetbrains Toolbox..."
    sudo apt-get install -y libfuse2 libxi6 libxrender1 libxtst6 mesa-utils libfontconfig libgtk-3-bin tar curl wget

    curl -fsSL https://raw.githubusercontent.com/nagygergo/jetbrains-toolbox-install/master/jetbrains-toolbox.sh | bash
fi
