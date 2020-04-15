#!/bin/sh
cd `dirname $0`
mkdir -p ~/.config 2>/dev/null
ln -sf .config/nvim ~/.config/nvim
ln -sf .config/nvim ~/.vim
ln -sf .config/nvim/init.vim ~/.vimrc
