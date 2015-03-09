#!/bin/bash

# It is expected that git is already installed, since this is hosted on git

# Do an update before installing everything
sudo apt-get update

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
ln -s $(pwd)/develop /usr/bin/develop
ln -s $(pwd)/startup /usr/bin/startup

git config --global user.name "Robert Hintz"
git config --global user.email roberthintz@gmail.com
git config --global color.ui true

# Install standard things
sudo apt-get -y install vim python-pip tmux mercurial expect tree

# Install ssh things
sudo apt-get -y install openssh-client openssh-server

sudo apt-get -y install software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get -y install ansible sshpass

# Install package to auto-copy file into copy command
sudo apt-get -y install xclip

# Install ftp mounting package
sudo apt-get -y install curlftpfs

if ! type vagrant > /dev/null; then
    # Install VirtualBox
    curl -LO "http://download.virtualbox.org/virtualbox/4.3.22/virtualbox-4.3_4.3.22-98236~Ubuntu~raring_amd64.deb"
    sudo dpkg -i virtualbox-4.3_4.3.22-98236~Ubuntu~raring_amd64.deb
    rm virtualbox-4.3_4.3.22-98236~Ubuntu~raring_amd64.deb
fi

if ! type vagrant > /dev/null; then
    # Install Vagrant
    curl -LO 'https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.2_x86_64.deb'
    sudo dpkg -i vagrant_1.7.2_x86_64.deb
    rm vagrant_1.7.2_x86_64.deb
fi

sudo apt-get -y install python-dev

# Install vbguest plugin for vagrant
# vagrant plugin install vagrant-vbguest

sudo pip install virtualenvwrapper

dconf load /org/ < dconforg.dat

# SurveyMonkey VPN
sudo apt-get -y install vpnc network-manager-vpnc
