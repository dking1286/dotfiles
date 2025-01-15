#! /bin/bash

set -e

name=$1
file_path="./install_${name/"-"/"_"}.sh"

(
cat <<EOF
#! /bin/bash

set -e

if command -v $name >& /dev/null; then
    echo "$name is already installed, skipping."
else
    echo "Installing $name..."
    sudo apt-get -y install $name
fi
EOF
) > $file_path

chmod +x $file_path
