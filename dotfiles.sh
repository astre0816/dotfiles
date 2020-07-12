#!/bin/sh
d=$(cd $(dirname $0); pwd)
mkdir -p ~/.config 2>/dev/null
ln -sf $d/.config/nvim ~/.config/nvim
ln -sf $d/.config/nvim ~/.vim
ln -sf $d/.config/nvim/init.vim ~/.vimrc
ln -sf $d/.gitconfig ~/.gitconfig
