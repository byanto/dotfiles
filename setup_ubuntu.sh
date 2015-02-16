#!/bin/bash

# install vim
sudo apt-get install vim

# install git
sudo apt-get install git

# install Vundle to manage vim plugins
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# clone dotfiles from byanto.github.io
cd
git clone git@github.com:byanto/dotfiles.git

# make a soft link to .vimrc
ln -s ~/dotfiles/.vimrc .vimrc

# install vim plugins with Vundle
vim +PluginInstall  +qall

# install YouCompleteMe
sudo apt-get install build-essential cmake #install development tools and cmake
sudo apt-get install python-dev # install Python headers
cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer # compile YCM with semantic-support for C-Family

# install exfat-fuse and exfat-utils to enable mounting exfat drives
sudo apt-get install exfat-fuse exfat-utils

# install cmus music player
sudo apt-get install cmus
