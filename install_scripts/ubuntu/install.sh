#! /bin/bash

set -e

sudo apt update

# Development tools
./install_git.sh
./install_gcloud_cli.sh

# Programming languages
./install_java.sh
./install_clojure.sh
./install_node.sh

# Editors
./install_jetbrains_toolbox.sh
./install_vs_code.sh
./install_emacs.sh

# Virtualization tools
./install_gnome_boxes.sh
./install_virtualbox.sh

sudo apt update
sudo apt -y upgrade
