#! /bin/bash

set -e

./install_scripts/ubuntu/install_git.sh
./install_scripts/ubuntu/install_java.sh
./install_scripts/ubuntu/install_clojure.sh
./install_scripts/ubuntu/install_node.sh
./install_scripts/ubuntu/install_jetbrains_toolbox.sh
./install_scripts/ubuntu/install_gcloud_cli.sh
./install_scripts/ubuntu/install_gnome_boxes.sh
./install_scripts/ubuntu/install_virtualbox.sh
./install_scripts/ubuntu/install_emacs.sh
./install_scripts/ubuntu/install_vs_code.sh

sudo apt update
sudo apt -y upgrade