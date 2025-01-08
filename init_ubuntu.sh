#! /bin/bash

set -e

sudo apt update

./install_scripts/ubuntu/install_git.sh
./install_scripts/ubuntu/install_java.sh
./install_scripts/ubuntu/install_clojure.sh
./install_scripts/ubuntu/install_node.sh
./install_scripts/ubuntu/install_jetbrains_toolbox.sh
./install_scripts/ubuntu/install_gcloud_cli.sh
./install_scripts/ubuntu/install_gnome_boxes.sh
./install_scripts/ubuntu/install_virtualbox.sh
./install_scripts/ubuntu/install_vs_code.sh
./install_scripts/ubuntu/install_emacs.sh
# Installation of emacs clones the emacs repo from Github, delete it.
rm -rf emacs

sudo apt update
sudo apt -y upgrade