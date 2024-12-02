#!/usr/bin/env bash 

readonly SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

git clone https://github.com/vim-airline/vim-airline ~/.vim/pack/dist/start/vim-airline

# We can either store all the files in a separate directory, and create symlinks of all those, or we can store all of them in the file, or we can 

for file in $SCRIPT_DIR/*; do
	extension="${file##*.}"
	# TODO we will change the vim extension later
	if [ $extension != "md" ] && [ $extension != "sh" ] && [ $extension != "json" ]; then
        if [ $extension == "vim" ]; then
            ln -s $file ~/.vim/pack/dist/start/vim-airline/autoload/airline/themes/airlinecalm.vim
        fi
		ln -s $file ~/.$(basename ${file})
	fi
done
