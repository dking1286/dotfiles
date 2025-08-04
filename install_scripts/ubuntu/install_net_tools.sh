#! /bin/bash

set -e

if dpkg -l | grep net-tools >& /dev/null; then
    echo "net-tools is already installed, skipping."
else
    echo "Installing net-tools..."
    sudo apt-get -y install net-tools
fi
