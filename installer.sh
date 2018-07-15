#!/bin/sh

case "${OSTYPE}" in
	darwin*)
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	;;
	linux*)
	sudo apt update -y
	sudo apt upgrade -y
	sudo apt install build-essential devscripts -y
	sudo apt install chromium-browser -y
	sudo apt install byobu -y;;
esac

