# TODO add curl to extension needing installation

<h1 align="center"> dotfiles </h3>

<p align="center"> My personal dotfiles with an interactive installer. </p>

## Features

This repository contains my custom dotfiles. Only an internet connection and git are required to deploy these configurations.

## Installation

To download this repository run:

```
cd ~/ && git clone https://github.com/buffdelta/dotfiles
```

To install this repository run:

```
~/./dotfiles/install.sh
```

Then answer the prompts given by the script.

## Features

A custom vim colorscheme, calm.vim. A colorscheme for [vim-airline](https://github.com/vim-airline/vim-airline). A minimally changed [Neofetch](https://github.com/dylanaraps/neofetch) config. Lastly, this repo contains a shell file, *install.sh* which handles installation of these files in a menu-based way.

### bashrc

My bashrc, with configurations that I have found to be the most helpful. Notably, it will run Neofetch at start up, as well as curl wttr.in, if the request does not take longer than a second (We do not want to hang for a long time). It also contains a function, git_branch, which will output the current branch of the github repo if we are inside one, and change colors if any changes have been made to the repo.

### Vim

My vimrc, with configurations that I have found to be the most beneficial during development. This repository also contains a custom color scheme; calm.vim, which will be installed in ~/.vim/colors, as of now it only works on terminals which offer all 256 colors. As well as a color scheme for [vim-airline](https://github.com/vim-airline/vim-airline).

### [Neofetch](https://github.com/dylanaraps/neofetch)

A customized config for [Neofetch](https://github.com/dylanaraps/neofetch), which changes minimal things compared to default config.
