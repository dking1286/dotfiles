function ensure_dotfiles {
    if [ "$1" = "-v" ] || [ "$1" = "--verbose" ]; then
        local verbose=true
        local dotfiles_path=$2
        local dotfiles_to_check="${@:3}"
    elif [[ "$1" =~ ^- ]]; then
        echo "Flag $1 not recognized in call to $FUNCNAME"
        return 1
    else
        local verbose=false
        local dotfiles_path=$1
        local dotfiles_to_check="${@:2}"
    fi

    for dotfile in ${dotfiles_to_check[@]}; do
        if [ -e "$HOME/$dotfile" ]; then
            if [ -L "$HOME/$dotfile" ]; then
                # TODO: Make this check the actual link address
                if [ "$verbose" = true ]; then
                    echo "Dotfile $dotfile already set up."
                fi
            else
                echo "Dotfile $dotfile exists, but is not a symlink."
            fi
        else
            echo "Dotfile $dotfile does not exist in home directory, creating symlink."
            ln -s "$dotfiles_path/$dotfile" "$HOME/$dotfile"
        fi
    done
}