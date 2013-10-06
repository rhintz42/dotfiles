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

if [ -L ~/.vimrc ]
  then
    rm ~/.vimrc
fi

ln -s $(pwd)/.vimrc ~/.vimrc

if [ -L ~/.vim ]
  then
    rm -rf ~/.vim
fi

ln -s $(pwd)/.vim ~/.vim

git config --global user.name "Robert Hintz"
git config --global user.email roberthintz@gmail.com
