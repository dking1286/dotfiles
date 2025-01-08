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

    # The `nvm` command is set up by adding some lines to .bashrc. To use `nvm`
    # now without closing and re-opening the terminal, we need to evaluate those
    # same lines here.
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

    # Install latest LTS version of nodejs
    nvm install --lts
    nvm use --lts
fi
