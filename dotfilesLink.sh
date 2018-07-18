#!/bin/bash

case "${OSTYPE}" in
	darwin*)
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew install vim -y
	brew install ack -y	
	;;
	linux*)
	sudo apt install curl -y
	sudo apt install vim -y
	sudo apt install ack-grep -y
	;;
esac

ln -sf ~/ToxumuharuDotfiles/.vimrc ~/.vimrc
ln -sf ~/ToxumuharuDotfiles/.bash_profile ~/.bash_profile
ln -sf ~/ToxumuharuDotfiles/.bashrc ~/.bashrc
