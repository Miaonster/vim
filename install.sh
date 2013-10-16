#!/bin/sh
cd ~/.vim

if [ -f "$HOME/.vimrc" ]; then
    mv ~/.vimrc ~/.vimrc.`date +%Y%m%d`
fi

ln -s ~/.vim/vimrc ~/.vimrc

git submodule init
git submodule update

vi +BundleInstall! +qall

(cd ~/.vim/bundle/YouCompleteMe; ./install.sh --clang-completer)
