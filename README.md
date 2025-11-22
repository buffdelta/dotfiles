<div align="center">
  <img width="672" height="378" alt="Screenshot 2025-11-21 195049" src="https://github.com/user-attachments/assets/afdc25d7-8646-452c-995c-e7e4591b6143" />
</div>
<p align="center"> My personal dotfiles with an interactive installer. </p>

## dotfiles
A small Bash installer for managing dotfiles, creating symlinks, and installing optional tools. Intended to make startup on a new environment quick and seamless. This works on some POSIX compliant shells, namely Debian and Git Bash. In the future (If I ever use a different distro) I could add other platforms, as it is trivial to extend it to come with a mostly working implementation as it is now.

## Features
Symlinks dotfiles from the repo into the home directory for quick use.
Detects conflicts (File already exists) and lets you:

d — delete
s — skip

Installs packages (Currently just apt-get or scoop)
Clones extensions when given a URL (Such as vim-airline)

## Usage / Installation

~~~
./install.sh
~~~

Then, go through the options and decide what to do with each file.

To have your own custom files instead, you can use the create_symlink, with the relative location of the file from where install.sh is as the first argument, and the location of where you would like it to go for the second argument. This extension assumes that whatever you are linking will be a part of the home directory.

~~~
create_symlink configurations/vimrc .vimrc
~~~

This will create a symlink with the file vimrc to the home directory with the new name .vimrc.

To have your own extensions installed, you can use a the install_extension command, with the first argument being the name of the program to download using the package manager.

~~~
install_extension vim
~~~

This will download Vim via apt-get if I am running on a Debian system.
Install extension can also clone a github repo. If it is a url that is detected, a second argument will be needed to specify where the repo should be cloned too. For example,

~~~
install_extension https://github.com/vim-airline/vim-airline ~/.vim/pack/dist/start/vim-airline
~~~

Will clone Vim Airline into ~/.vim/pack/dist/start/vim-airline
