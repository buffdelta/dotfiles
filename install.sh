#!/usr/bin/env bash

readonly SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
PACKAGE_INSTALL_COMMAND="apt-get install"
BACKUP_DIR_MADE=false

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
        echo "ERROR: ~/$2 does not exist, stopping process of creating a symlink."
        return
    fi

    while true; do
        read -p "Would you like to link $SCRIPT_DIR/$1 -> ~/$2 [y/n]? " response
        case $response in
            [yY][eE][sS]|[yY])
                if [ -f ~/$2 ] || [ -d ~/$2 ]; then
                    while true; do
                        read -p  "~/$2 exists, do you want to delete it [y/n], or backup the file [b]? " response
                        case $response in
                            [yY][eE][sS]|[yY])
                                rm -r -v ~/$2
                                dir=$2
                                parentdir="$(dirname "$dir")"
                                mkdir -v -p ~/$parentdir
                                ln -v -s $SCRIPT_DIR/$1 ~/$2
                                break
                            ;;
                            [Bb][Aa][Cc][Kk][Uu][Pp]|[Bb])
                                if [ "$BACKUP_DIR_MADE" = false ] ; then
                                    n=0
                                    while ! mkdir $SCRIPT_DIR/backup$n
                                    do
                                        n=$((n+1))
                                    done
                                    BACKUP_DIR_MADE=true
                                fi
                                mv -v ~/$2 $SCRIPT_DIR/backup$n
                                ln -v -s $SCRIPT_DIR/$1 ~/$2
                                break
                            ;;
                            [Nn][Oo]|[Nn])
                                break
                            ;;
                            * )
                                echo "Please answer yes/no/backup."
                            ;;
                        esac
                    done
                else
                    dir=$2
                    parentdir="$(dirname "$dir")"
                    mkdir -v -p ~/$parentdir
                    ln -v -s $SCRIPT_DIR/$1 ~/$2
                fi
                break
            ;;
            [Nn][Oo]|[Nn])
                break
            ;;
            * )
                echo "Please answer yes or no."
            ;;
        esac
    done
}

# $1 = Extension name (If URL, always assume git repo for now, if not assume package)
# $2 = Extension install location
function install_extension() {
    local regex='(https?|ftp|file)://[-[:alnum:]\+&@#/%?=~_|!:,.;]*[-[:alnum:]\+&@#/%=~_|]'

    if [[ $1 =~ $regex ]]; then
        if [ ! -d $2 ]; then
            while true; do
                read -p "$1 is not installed. Do you wish to install [y/n]?" response
                case $response in
                    [yY][eE][sS]|[yY])
                        git clone $1 $2
                        break
                    ;;
                    [Nn][Oo]|[Nn])
                        break
                    ;;
                    * )
                        echo "Please answer yes or no."
                    ;;
                esac
            done
        fi
    elif !(command -v $1 >/dev/null); then
        read -p "$1 is not installed. Do you wish to install [y/n]?" response
        while true; do
            case $response in
                [yY][eE][sS]|[yY])
                    sudo $PACKAGE_INSTALL_COMMAND $1
                    break
                ;;
                [Nn][Oo]|[Nn])
                    break
                ;;
                * )
                    echo "Please answer yes or no."
                ;;
            esac
        done
    fi
}

# gitconfig
create_symlink configurations/gitconfig .gitconfig

# gitignore
create_symlink configurations/gitignore .gitignore

# bashrc
create_symlink configurations/bashrc .bashrc

# bash exports file
create_symlink configurations/bashexports.sh .bashexports.sh

# neofetch
install_extension neofetch
create_symlink configurations/neofetch .config/neofetch

# curl
install_extension curl

# vim configurations
install_extension vim
create_symlink configurations/vimrc .vimrc
create_symlink configurations/calm.vim .vim/colors/calm.vim

# vim-airline
install_extension https://github.com/vim-airline/vim-airline ~/.vim/pack/dist/start/vim-airline
create_symlink configurations/airlinecalm.vim .vim/pack/dist/start/vim-airline/autoload/airline/themes/calm.vim
