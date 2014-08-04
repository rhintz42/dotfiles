#!/bin/bash

if [[ -L ~/.bash_login || -a ~/.bash_login ]]
  then
    rm ~/.bash_login;
fi

ln -s $(pwd)/.bash_login ~/.bash_login

if [[ -L ~/.bashrc || -a ~/.bashrc ]]
  then
    rm ~/.bashrc
fi

ln -s $(pwd)/.bashrc ~/.bashrc

if [[ -L ~/.vimrc || -a ~/.vimrc ]]
  then
    rm ~/.vimrc
fi

ln -s $(pwd)/.vimrc ~/.vimrc

if [[ -L ~/.vim || -a ~/.vim || -d ~/.vim ]]
  then
    rm -rf ~/.vim
fi

ln -s $(pwd)/.vim ~/.vim

if [[ -L ~/.Xmodmap || -a ~/.Xmodmap ]]
  then
    rm -rf ~/.Xmodmap
fi

ln -s $(pwd)/.Xmodmap ~/.Xmodmap

if [[ -L ~/.tmux.conf || -a ~/.tmux.conf ]]
  then
    rm -rf ~/.tmux.conf
fi

ln -s $(pwd)/.tmux.conf ~/.tmux.conf

git config --global user.name "Robert Hintz"
git config --global user.email roberthintz@gmail.com
git config --global color.ui true
# git config --global push.default simple

sudo apt-get -y install tmux mercurial
