#! /bin/bash

set -e

if dpkg -l | grep "python3-pip$" >& /dev/null; then
    echo "python3-pip is already installed, skipping."
else
    echo "Installing python3-pip..."
    sudo apt-get -y install python3-pip
fi
