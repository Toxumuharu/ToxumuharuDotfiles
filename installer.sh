#!/bin/sh

case "${OSTYPE}" in
	darwin*)
	;;
	linux*)
	sudo apt update -y
	sudo apt upgrade -y
	sudo apt install build-essential devscripts -y
	sudo apt install chromium-browser -y
	sudo apt install byobu -y
	;;
esac

ln -sf ~/ToxumuharuDotfiles/.vimrc ~/.vimrc
ln -sf ~/ToxumuharuDotfiles/.bash_profile ~/.bash_profile
ln -sf ~/ToxumuharuDotfiles/.bashrc ~/.bashrc
