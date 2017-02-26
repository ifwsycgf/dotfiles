#!/bin/bash

##################################
# env Setting
##################################
# proUSER=""
# proPASS=""
# proIPADD=""
# proPORT=""
#
# export http_proxy="http://${proUSER}:${proPASS}@${proIPADD}:${proPORT}/"
# export ftp_proxy="http://${proUSER}:${proPASS}@${proIPADD}:${proPORT}/"

##################################
# Package Install
##################################
printf "password: "
read password

for i in zsh git python-setuptools python-pip python-sphinx ; do
	echo "$password" | sudo -S apt-get -y install ${i}
# 	echo "$password" | sudo -S yum -y install ${i}
done

##################################
# git initial configuration
##################################

# git config --list | grep "proxy"
# if [[ $? = "1" ]]; then
# 	git config --global http.proxy http://${proUSER}:${proPASS}@${proIPADD}:${proPORT}:
# fi

git config --list | grep "user.name"
if [ $? = "1" ]; then
	git config --global user.name "ifwsycgf"
fi

git config --list | grep "user.email"
if [ $? = "1" ]; then
	git config --global user.email "ifwsycgf@gmail.com"
fi

git config --list | grep "core.editor"
if [ $? = "1" ]; then
	git config --global core.editor 'vim -c "set fenc=utf-8"'
fi

##################################
# Create dotfiles in home directory
##################################
if [ ! -e ~/dotfiles ]; then
    mkdir ~/dotfiles
fi
git clone http://github.com/ifwsycgf/dotfiles.git

for i in .zshrc_linux .vimrc .gvimrc .vimperatorrc ; do
	if [ -e ~/dotfiles/${i} ]; then
    	ln -sf ~/dotfiles/${i} ~/${i}
	fi
done

if [ ! -e ~/.vim/vimbackup ]; then
	mkdir -p ~/.vim/vimbackup
fi
