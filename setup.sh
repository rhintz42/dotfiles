#!/bin/bash

if [ -h ~/.bash_login ]
  then
    rm ~/.bash_login;
fi

ln -df .bash_login ~/.bash_login

if [ -h ~/.bashrc ]
  then
    rm ~/.bashrc
fi

ln -df .bashrc ~/.bashrc

if [ -h ~/.vimrc ]
  then
    rm ~/.vimrc
fi

ln -df .vimrc ~/.vimrc

if [ -d ~/.vim ]
  then
    rm -rf ~/.vim
fi


ln -s $(pwd)/.vim ~/.vim

if [ -d ~/.vim/bundle/nerdtree ]
  then
    rm ~/.vim/bundle/nerdtree
fi

git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
