#! /bin/bash

set -e

# Using command -v nvm doesn't work, so to check if NVM is installed, we check
# if the ~/.nvm directory exists, which is created during NVM installation.
if [ -e "$HOME/.nvm" ]; then
    echo "NVM is already installed, skipping."
else
    echo "NVM is not installed, installing..."
    sudo apt-get install -y curl
    # Install nvm
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

    # Install latest LTS version of nodejs
    nvm install --lts
    nvm use --lts
fi
