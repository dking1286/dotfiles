# dotfiles
Daniel King's configuration files.

## Setup

1) Clone the `dotfiles` repository

2) Add the following to your `.bashrc` or equivalent setup file, replacing the
`bash_libs_to_load` and `dotfiles` arrays with the specific helpers and
dotfiles you want to automatically load from the repository:

```bash
dotfiles_path="/path/to/dotfiles"
bash_libs_path="$dotfiles_path/bash_libs"

bash_libs_to_load=(
    'lib1.sh',
    'lib2.sh')
dotfiles=(
    'dotfile1'
    'dotfile2'
    'dotfile3')

. "$bash_libs_path/load_bash_libs.sh"
load_bash_libs $bash_libs_path ${bash_libs_to_load[@]}

. "$bash_libs_path/ensure_dotfiles.sh"
ensure_dotfiles $dotfiles_path ${dotfiles[@]}
```

## Installing software on Ubuntu

If you are starting from a fresh Ubuntu install and want to get up and running
with several useful pieces of software, you can use the `init_ubuntu.sh` script.
Please comment out any parts of the script if you do not want to install some
pieces of software.

To use the script:

1) Ensure that `$HOME/bin` and `$HOME/.local/bin` are on your path.
If they are not, you can add the following lines to your `.profile`:

```bash
if [[ ":${PATH}:" != *":${HOME}/bin:"* ]]; then
    PATH="${HOME}/bin:${PATH}"
fi

if [[ ":${PATH}:" != *":${HOME}/.local/bin:"* ]]; then
    PATH="${HOME}/.local/bin:${PATH}"
fi
```

Note: If you are running this under WSL, it seems that the `.profile` never gets
evaluated, because the shell is not a "login shell". Therefore, you should put
this into your `.bashrc`.

2) `cd` into the `dotfiles/install_scripts/ubuntu` directory, and run `./install.sh`. Note that
you *must* do this from within the `dotfiles/install_scripts/ubuntu` directory.