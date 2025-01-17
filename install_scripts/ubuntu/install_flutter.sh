#! /bin/bash

set -e

if command -v flutter >& /dev/null; then
    echo "flutter is already installed, skipping."
else
    echo "Installing flutter..."
    # Install dependencies
    sudo apt-get update -y && sudo apt-get upgrade -y;
    sudo apt-get install -y curl git unzip xz-utils zip libglu1-mesa
    # Download the Flutter SDK
    wget -O $HOME/Downloads/flutter_linux_3.27.2-stable.tar.xz https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.27.2-stable.tar.xz
    # Make a directory for the Flutter SDK
    mkdir $HOME/.flutter-sdk
    # Extract the flutter SDK
    tar -xf $HOME/Downloads/flutter_linux_3.27.2-stable.tar.xz -C $HOME/.flutter-sdk/
    # Add Flutter to the PATH
    echo 'export PATH="~/.flutter-sdk/flutter/bin:$PATH"' >> ~/.profile
fi
