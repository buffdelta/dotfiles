#!/usr/bin/env bash

readonly SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
PACKAGE_INSTALL_COMMAND="sudo apt-get install"

if [[ "$OSTYPE" == "msys" ]]; then
    powershell -Command "Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser"
    powershell -Command "Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression"
    export SCOOP="$HOME/scoop"
    PACKAGE_INSTALL_COMMAND="scoop install"
fi

BACKUP_DIR_MADE=false

function resolve_conflict() {
    local src=$1
    local dest=$2

    echo -en "\t\e[33m ~/$dest\e[0m exists, do you want to delete it [d], or skip it [s]? "
    while true; do
        read -r response
        case $response in
            [Dd][Ee][Ll][Ee][Tt][Ee]|[Dd])
                rm -rf $HOME/$dest
                echo -e "\t Removed \e[31m~/$dest\e[0m"
                dir=$2
                parentdir="$(dirname "$dir")"
                mkdir -vp $HOME/$parentdir
                ln -s $SCRIPT_DIR/$src $HOME/$dest
                echo -e "\t Linked \e[35m$SCRIPT_DIR/$1\e[0m -> \e[32m~/$2\e[0m"
                return
            ;;
            [Ss][Kk][Ii][Pp]|[Ss]) return ;;
            *) echo "Please answer delete/skip." ;;
        esac
    done
}

# $1 = File location
# $2 = Symlink file destination
function create_symlink() {
    # If Arg count is not equal two, return early.
    if [ $# != 2 ]; then
        echo "ERROR: Too few arguments given, stopping process of creating a symlink."
        return
    fi

    # If file/directory does not exist, return early.
    if [ ! -f $SCRIPT_DIR/$1 ] && [ ! -d $SCRIPT_DIR/$1 ]; then
        echo "ERROR: $SCRIPT_DIR/$1 does not exist, stopping process of creating a symlink."
        return
    fi

    if read_response "Would you like to link \e[36m$SCRIPT_DIR/$1\e[0m -> \e[32m~/$2\e[0m [y/n]? "; then
        if [ -f "$HOME/$2" ] || [ -d "$HOME/$2" ]; then
            resolve_conflict $1 $2
        else
            dir=$2
            parentdir="$(dirname "$dir")"
            mkdir -vp ~/$parentdir
            ln -vs $SCRIPT_DIR/$1 ~/$2
        fi
    fi
}

# $1 = String to print
# Returns: 0 = yes, 1 = no
function read_response() {
    echo -ne "$1"
    while true; do
        read -r response
        case $response in
            [yY][eE][sS]|[yY]) return 0 ;;
            [Nn][Oo]|[Nn]) return 1 ;;
            *) echo "Please answer yes or no" ;;
        esac
    done
}

# $1 = Extension name (If URL, always assume git repo for now, if not assume package)
# $2 = Extension install location
function install_extension() {
    local regex='(https?|ftp|file)://[-[:alnum:]\+&@#/%?=~_|!:,.;]*[-[:alnum:]\+&@#/%=~_|]'
    if [[ $1 =~ $regex ]]; then
        if [ ! -d $2 ]; then
            if read_response "$1 is not installed. Do you wish to install [y/n]? "; then
                git clone $1 $2
            fi
        fi
    elif !(command -v $1 >/dev/null); then
        if read_response "$1 is not installed. Do you wish to install [y/n]? "; then
             $PACKAGE_INSTALL_COMMAND "$1"
        fi
    fi
}

# Git
create_symlink configurations/gitconfig .gitconfig
create_symlink configurations/gitignore .gitignore

# Bash
create_symlink configurations/bash_profile .bash_profile
create_symlink configurations/bashrc .bashrc
create_symlink configurations/bash_exports .bash_exports
create_symlink configurations/bash_aliases .bash_aliases
create_symlink configurations/bash_prompt .bash_prompt

# Neofetch
install_extension neofetch
create_symlink configurations/neofetch .config/neofetch

# Curl
install_extension curl

# Vim Configurations
install_extension vim
create_symlink configurations/vimrc .vimrc
create_symlink configurations/calm.vim .vim/colors/calm.vim

# Vim-Airline
install_extension https://github.com/vim-airline/vim-airline ~/.vim/pack/dist/start/vim-airline
create_symlink configurations/airlinecalm.vim .vim/pack/dist/start/vim-airline/autoload/airline/themes/calm.vim
