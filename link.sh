#!/bin/bash

#git
ln -sf ~/ToxumuharuDotfiles/completion/.git-prompt.sh ~/.git-prompt.sh
ln -sf ~/ToxumuharuDotfiles/completion/.git-completion.bash ~/.git-completion.bash
ln -sf ~/ToxumuharuDotfiles/completion/.git-completion.bash ~/.git-completion.tcsh
ln -sf ~/ToxumuharuDotfiles/completion/.git-completion.bash ~/.git-completion.zsh

#Link dotfiles
ln -sf ~/ToxumuharuDotfiles/.vimrc ~/.vimrc
ln -sf ~/ToxumuharuDotfiles/.bash_profile ~/.bash_profile
ln -sf ~/ToxumuharuDotfiles/.bashrc ~/.bashrc
ln -sf ~/ToxumuharuDotfiles/.inputrc ~/.inputrc
ln -sf ~/ToxumuharuDotfiles/.zshrc ~/.zshrc

. ~/.bashrc
. ~/.inputrc

clear

