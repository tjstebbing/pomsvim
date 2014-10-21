#!/bin/bash
ln -s $PWD ~/.vim
ln -s $PWD/vimrc ~/.vimrc
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
