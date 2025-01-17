#! /bin/bash

set -e

if command -v opam >& /dev/null; then
    echo "ocaml is already installed, skipping."
else
    echo "Installing ocaml..."
    sudo apt-get -y install opam
fi
