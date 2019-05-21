#!/bin/bash



#OS type == macOS
case "${OSTYPE}" in
darwin*)
echo $'\e[31mmacOS detected\e[0m'
#echo "macOS detected"
brew install vim
brew install git
brew install neofetch
brew install figlet
brew install ack

export PATH="/usr/local/bin:$PATH"
;;



#OS type == Linux(not obvious, Just Linux)
linux*)
killall update-manager
sudo add-apt-repository ppa:dawidd0811/neofetch -y
sudo add-apt-repository 'deb http://ftp.au.debian.org/debian/ stretch main non-free'
sudo apt update -y
sudo apt install neofetch -y
sudo apt install figlet -y
echo ""
echo "Installing packages"
sudo apt install curl -y
sudo apt install vim -y
sudo apt install ack-grep -y
sudo apt install gcc -y


string="Debian"
if test $(cat /etc/issue | sed -n 's/.*\(Debian *\).*/\1/p') = $string
then
sudo apt install software-properties-common dirmngr gnupg-agent
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys AD5F235DF639B041
echo 'deb http://ppa.launchpad.net/alessandro-strada/ppa/ubuntu xenial main' | sudo tee /etc/apt/sources.list.d/alessandro-strada-ubuntu-ppa.list >/dev/null
sudo apt update
sudo apt install google-drive-ocamlfuse
mkdir ~/GoogleDrive
fi

#OS type == Windows Subsystem for Linux(WSL)
string="Microsoft"
#detect WSL or native Linux
if test $(uname -r | sed -n 's/.*\(Microsoft *\).*/\1/p') = $string
then
echo $'\e[31mWSL detected\e[0m'
#echo "WSL detected"
else
echo $'\e[31mLinux detected\e[0m'
#echo "Linux detected"
sudo apt upgrade -y
sudo apt install build-essential devscripts -y
sudo apt install chromium -y 
sudo apt-get install firmware-iwlwifi
sudo apt install xdg-utils -y
sudo apt install nautilus-dropbox -y
sudo apt-get install firmware-iwlwifi -y
sudo add-apt-repository ppa:alessandro-strada/ppa -y
sudo apt install google-drive-ocamlfuse -y
fi
;;
esac



#Link dotfiles
ln -sf ~/ToxumuharuDotfiles/.vimrc ~/.vimrc
ln -sf ~/ToxumuharuDotfiles/.bash_profile ~/.bash_profile
ln -sf ~/ToxumuharuDotfiles/.bashrc ~/.bashrc
echo "Linked dotfiles"
echo "Finishing..."
echo ""

figlet Welcome,
figlet Toxumuharu
