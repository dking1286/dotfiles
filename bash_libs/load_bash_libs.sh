# Function to load bash helper scripts from an array.
#
# Motivating use case: My .bashrc may need to be slightly different on different
# machines (Mac vs Linux vs WSL), but I want to define common helper snippets
# that can be selectively pulled into .bashrc.
#
# How to use in .bashrc:
# 1) Define a variable containing the path to the directory
#    containing the helpers scripts.
#
# 2) Define a variable containing an array of the filenames you want to load.
#
# 3) Evaluate load_bash_libs.sh
#
# 4) Invoke the load_bash_libs function, passing in the path and array of
#    filenames.
#
# Example, assuming that the dotfiles repository is cloned to your home
# directory:
# 
# bash_libs_path="$HOME/dotfiles/bash_libs"
# bash_libs_to_load=('my_awesome_script_1.sh'
#                    'my_awesome_script_2.sh')
#
# . "$bash_libs_path/load_bash_libs.sh"
# load_bash_libs $bash_libs_path ${bash_libs_to_load[@]}

function load_bash_libs {
    if [ "$1" = "-v" ] || [ "$1" = "--verbose" ]; then
        local verbose=true
        local bash_libs_path=$2
        local bash_libs_to_load="${@:3}"
    elif [[ "$1" =~ ^- ]]; then
        echo "Flag $1 not recognized in call to $FUNCNAME"
        return 1
    else
        local verbose=false
        local bash_libs_path=$1
        local bash_libs_to_load="${@:2}"
    fi

    for lib in ${bash_libs_to_load[@]}; do
        file_to_load="$bash_libs_path/$lib"
        if [ -f "$file_to_load" ]; then
            . $file_to_load

            if [ "$verbose" = true ]; then
                echo "loaded $file_to_load"
            fi
        else
            echo "Attempted to load bash lib $file_to_load, but it did not exist."
        fi
    done
}