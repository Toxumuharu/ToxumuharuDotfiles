#!/bin/bash

case "${OSTYPE}" in
	darwin*)
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew install vim -y
	export PATH="/usr/local/bin:$PATH"	
	;;
	linux*)
string="Microsoft"
if test $(uname -r | sed -n 's/.*\(Microsoft *\).*/\1/p') = $string
then
echo "WSL detected"
else
echo "Linux detected"
fi
	sudo apt install curl -y
	sudo apt install vim -y
	;;
esac

ln -sf ~/ToxumuharuDotfiles/.vimrc ~/.vimrc
ln -sf ~/ToxumuharuDotfiles/.bash_profile ~/.bash_profile
ln -sf ~/ToxumuharuDotfiles/.bashrc ~/.bashrc
