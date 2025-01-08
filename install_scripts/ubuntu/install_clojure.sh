#! /bin/bash

set -e

if command -v clojure >& /dev/null; then
    echo "Clojure is already installed, skipping."
else
    echo "Clojure is not installed, installing..."
    # Prerequisites
    sudo apt-get install -y curl rlwrap

    # Main installation
    curl -L -O https://github.com/clojure/brew-install/releases/latest/download/linux-install.sh
    chmod +x linux-install.sh
    sudo ./linux-install.sh
    rm ./linux-install.sh
fi
