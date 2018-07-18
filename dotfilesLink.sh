#!/bin/bash

case "${OSTYPE}" in
	darwin*)
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew install vim -y
	export PATH="/usr/local/bin:$PATH"	
	brew install ack -y
	;;
	linux*)
	sudo add-apt-repository ppa:dawidd0811/neofetch -y
	sudo apt update -y
	sudo apt install neofetch -y
	sudo apt install curl -y
	sudo apt install vim -y
string="Microsoft"
if test $(uname -r | sed -n 's/.*\(Microsoft *\).*/\1/p') = $string
then
	echo "WSL detected"
	neofetch
	else
	echo "Linux detected"
	neofetch
	sudo apt install build-essential devscripts -y
	sudo apt install chromium-browser -y
	sudo apt install byobu -y
	fi
	;;
esac

ln -sf ~/ToxumuharuDotfiles/.vimrc ~/.vimrc
ln -sf ~/ToxumuharuDotfiles/.bash_profile ~/.bash_profile
ln -sf ~/ToxumuharuDotfiles/.bashrc ~/.bashrc
