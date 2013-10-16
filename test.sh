#!/bin/sh
if [ -d "$HOME/.vim" ]; then
    mv ~/.vim ~/.vim.`date +%Y%m%d`
fi

git clone https://github.com/Witcher42/vim.git ~/.vim
