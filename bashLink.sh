#!/bin/bash

#git-completion
ln -sf ~/ToxumuharuDotfiles/.dotfiles ~/.dotfiles

#Link dotfiles
ln -sf ~/ToxumuharuDotfiles/.vimrc ~/.vimrc
ln -sf ~/ToxumuharuDotfiles/.bash_profile ~/.bash_profile
ln -sf ~/ToxumuharuDotfiles/.bashrc ~/.bashrc
ln -sf ~/ToxumuharuDotfiles/.inputrc ~/.inputrc

. ~/.bashrc
. ~/.inputrc

#clear
