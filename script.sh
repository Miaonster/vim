#!/bin/sh

function install() {
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

  vim +BundleInstall! +qall! </dev/tty

  #(cd ~/.vim/bundle/YouCompleteMe; ./install.sh --clang-completer)
}


function update() {
  (cd ~/.vim; git pull)
  vim +BundleClean! +BundleInstall +qall! </dev/tty
}

for arg in "$@"
do
  case $arg in 
    install)
      install;
      break;
      ;;
    update)
      update;
      break;
      ;;
  esac
done
