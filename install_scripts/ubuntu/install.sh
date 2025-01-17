#! /bin/bash

set -e

sudo apt update

# Development tools
./install_git.sh
./install_gcloud_cli.sh

# Programming languages
./install_java.sh
./install_kotlin.sh
./install_clojure.sh
./install_node.sh
./install_ocaml.sh
./install_dart.sh
./install_flutter.sh
./install_python3_venv.sh

# Editors
./install_jetbrains_toolbox.sh
./install_vs_code.sh
./install_emacs.sh

# Virtualization tools
./install_docker_desktop.sh
./install_gnome_boxes.sh
./install_virtualbox.sh

# Productivity tools
./install_gnome_tweaks.sh
./install_input_remapper.sh
./install_obsidian.sh
./install_slack.sh

sudo apt update
sudo apt -y upgrade
