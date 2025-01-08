#! /bin/bash

set -e

if command -v code >& /dev/null; then
  echo "VS Code is already installed, skipping installation."
else
  echo "VS Code is not installed, installing..."
  # Add the apt repository
  sudo apt-get install -y wget gpg
  wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
  sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
  echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
  rm -f packages.microsoft.gpg

  # Install the package
  sudo apt-get install -y apt-transport-https
  sudo apt-get update
  sudo apt-get install -y code
fi

# TODO: Can I install extensions via the command line?
