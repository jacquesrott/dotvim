#!/usr/bin/env bash

mkdir ~/.vim/undo ~/.vim/backup
git submodule update --init --recursive
ln -s ~/.vim/vimrc ~/.vimrc
