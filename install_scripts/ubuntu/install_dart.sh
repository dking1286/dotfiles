#! /bin/bash

set -e

if command -v dart >& /dev/null; then
    echo "dart is already installed, skipping."
else
    echo "Installing dart..."
    # Install dependencies
    sudo apt-get update && sudo apt-get -y install apt-transport-https
    # Download the Google Linux GPG public key
    wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub \
    | sudo gpg  --dearmor -o /usr/share/keyrings/dart.gpg
    # Add the Dart package repository
    echo 'deb [signed-by=/usr/share/keyrings/dart.gpg arch=amd64] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main' \
    | sudo tee /etc/apt/sources.list.d/dart_stable.list
    # Install Dart
    sudo apt-get update && sudo apt-get -y install dart
fi
