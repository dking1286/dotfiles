#! /bin/bash

set -e

sudo apt update

# Development tools
./install_scripts/ubuntu/install_git.sh
./install_scripts/ubuntu/install_gcloud_cli.sh

# Programming languages
./install_scripts/ubuntu/install_java.sh
./install_scripts/ubuntu/install_clojure.sh
./install_scripts/ubuntu/install_node.sh

# Editors
./install_scripts/ubuntu/install_jetbrains_toolbox.sh
./install_scripts/ubuntu/install_vs_code.sh
./install_scripts/ubuntu/install_emacs.sh

# Virtualization tools
./install_scripts/ubuntu/install_gnome_boxes.sh
./install_scripts/ubuntu/install_virtualbox.sh

sudo apt update
sudo apt -y upgrade
