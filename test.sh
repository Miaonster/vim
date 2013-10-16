#!/bin/sh

if [ -d "$HOME/.vim" ]; then
    mv ~/.vim ~/.vim.`date +%Y%m%d%H%M%S`
fi

git clone https://github.com/Witcher42/vim.git ~/.vim

if [ -f "$HOME/.vimrc" ]; then
    mv ~/.vimrc ~/.vimrc.`date +%Y%m%d%H%M%S`
fi

ln -s ~/.vim/vimrc ~/.vimrc

cd ~/.vim

git submodule init
git submodule update

#vi +BundleInstall! +qall

#(cd ~/.vim/bundle/YouCompleteMe; ./install.sh --clang-completer)
