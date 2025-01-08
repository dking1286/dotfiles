#! /bin/bash

set -e

if command -v java >& /dev/null; then
    echo "Java is already installed, skipping."
else
    echo "Java is not installed, installing..."
    sudo apt-get install -y default-jdk default-jre
fi
