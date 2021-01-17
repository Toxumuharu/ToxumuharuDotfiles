#!/bin/bash

#git-completion
ln -sf ~/ToxumuharuDotfiles/completion/.git-prompt.sh ~
ln -sf ~/ToxumuharuDotfiles/completion/.git-completion.bash ~

#Link dotfiles
ln -sf ~/ToxumuharuDotfiles/.vimrc ~/.vimrc
ln -sf ~/ToxumuharuDotfiles/.bash_profile ~/.bash_profile
ln -sf ~/ToxumuharuDotfiles/.bashrc ~/.bashrc
ln -sf ~/ToxumuharuDotfiles/.inputrc ~/.inputrc
ln -sf ~/ToxumuharuDotfiles/.zshrc ~/.zshrc

. ~/.bashrc
. ~/.inputrc

clear
