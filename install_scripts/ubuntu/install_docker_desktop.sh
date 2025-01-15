#! /bin/bash

set -e

if command -v docker >& /dev/null; then
    echo "docker_desktop is already installed, skipping."
else
    echo "Installing Docker Desktop..."
    
    # Add Docker's official GPG key:
    sudo apt-get update
    sudo apt-get install ca-certificates curl
    sudo install -m 0755 -d /etc/apt/keyrings
    sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
    sudo chmod a+r /etc/apt/keyrings/docker.asc

    # Add the repository to Apt sources:
    echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
    $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo apt-get update

    wget -O $HOME/Downloads/docker-desktop-amd64.deb "https://desktop.docker.com/linux/main/amd64/docker-desktop-amd64.deb?utm_source=docker&utm_medium=webreferral&utm_campaign=docs-driven-download-linux-amd64&_gl=1*5vgpgl*_ga*NDI3NTczNzI0LjE3MzY0ODEwMTk.*_ga_XJWPQMJYHQ*MTczNjQ4MTAxOC4xLjEuMTczNjQ4MTA0MC4zOC4wLjA."

    sudo apt-get update
    sudo apt-get -y install $HOME/Downloads/docker-desktop-amd64.deb

    # Start the docker engine running now
    systemctl --user start docker-desktop
    # Start the docker engine on login
    systemctl --user enable docker-desktop
fi
