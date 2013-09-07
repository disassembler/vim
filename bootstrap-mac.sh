#!/bin/bash

# Bootstrap script to get vim setup with dependencies.
if [ ! -f /usr/local/bin/brew ]
then
  ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
fi

if [ ! -f /usr/local/bin/mvim ]
then
  brew install macvim --with-macarchs=i386 --with-lua --enable-pythoninterp --override-system-vim
fi

if [ ! -d ~/.vim ]
then
  git clone https://github.com/disassembler/vim.git ~/.vim
fi

if [[ ! -d ~/.vim/bundle/neobundle.vim ]]
then
  mkdir -p ~/.vim/bundle
  git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
fi

vim --noplugin -u ~/.vim/vimrc-bundle -N \"+set hidden\" \"+syntax on\" +NeoBundleClean +NeoBundleInstall +qall

if [ ! -f ~/.vim/bundle/YouCompleteMe/python/ycm_core.so ]
then
  bash -c "cd ~/.vim/bundle/YouCompleteMe && ./install.sh"
fi

echo "Your VIM config is setup!"
