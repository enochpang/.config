#!/bin/sh

## Emacs
# ln -s ~/.config/emacs.d ~/.emacs.d

## Vim
ln -s ~/.config/vim ~/.vim
mkdir -p vim/tmp

## Neovim
mkdir -p nvim/autoload
curl -o nvim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
