#!/bin/sh

ln -s ~/.config/emacs.d ~/.emacs.d
mkdir -p nvim/autoload
curl -o nvim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
