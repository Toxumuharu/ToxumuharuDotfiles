#!/bin/bash

#git-completion
ln -sf ~/ToxumuharuDotfiles/.git-completion ~

#Link dotfiles
ln -sf ~/ToxumuharuDotfiles/.vimrc ~/.vimrc
ln -sf ~/ToxumuharuDotfiles/.bash_profile ~/.bash_profile
ln -sf ~/ToxumuharuDotfiles/.bashrc ~/.bashrc
ln -sf ~/ToxumuharuDotfiles/.inputrc ~/.inputrc
ln -sf ~/ToxumuharuDotfiles/.zshrc ~/.zshrc

. ~/.bashrc
. ~/.inputrc

clear
