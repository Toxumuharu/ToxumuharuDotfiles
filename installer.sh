#!/bin/bash

case "${OSTYPE}" in
	darwin*)
	brew install ack -y
	;;
	linux*)
	sudo apt update -y
	sudo apt upgrade -y
	sudo apt install build-essential devscripts -y
	sudo apt install chromium-browser -y
	sudo apt install byobu -y
	export VTE_CJK_WIDTH=1	
	sudo apt install ack-grep -y
	;;
esac

