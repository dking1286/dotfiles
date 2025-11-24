#! /bin/bash

set -e

sudo apt update

# Development tools and base dependencies
./install_net_tools.sh
./install_git.sh
./install_gcloud_cli.sh
./install_tmux.sh
./install_entr.sh

# Programming languages
./install_java.sh
./install_kotlin.sh
./install_clojure.sh
./install_node.sh
./install_ocaml.sh
./install_dart.sh
./install_flutter.sh
./install_python3_pip.sh
./install_python3_venv.sh

# Editors
./install_jetbrains_toolbox.sh
./install_vs_code.sh
./install_emacs.sh
./install_cursor.sh

# Fonts
./install_fonts_firacode.sh

# Virtualization tools
./install_docker_desktop.sh
./install_gnome_boxes.sh
./install_virtualbox.sh

# Productivity tools
./install_gnome_tweaks.sh
./install_input_remapper.sh
./install_obsidian.sh
./install_slack.sh
./install_ghostty.sh

sudo apt update
sudo apt -y upgrade
