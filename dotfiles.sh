#!/bin/sh
d=`dirname $0`
mkdir -p ~/.config 2>/dev/null
ln -sf $d/.config/nvim ~/.config/nvim
ln -sf $d/.config/nvim ~/.vim
ln -sf $d/.config/nvim/init.vim ~/.vimrc
