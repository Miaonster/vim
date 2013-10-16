#!/bin/sh

cd ~/.vim

git submodule init
git submodule update

vi +BundleInstall! +qall
