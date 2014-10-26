#!/bin/bash
ln -s $PWD ~/.vim
ln -s $PWD/vimrc ~/.vimrc

#install Vundle for plugin management
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#install powerline patched font 
cp ./Droid\ Sans\ Mono\ for\ Powerline.otf ~/.fonts
sudo fc-cache -f -v

# install jshint
npm install -g jshint
npm install -g jsonlint

vim +PluginInstall +qall
