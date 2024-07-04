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
