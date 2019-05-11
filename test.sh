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
sudo add-apt-repository 'deb http://ftp.au.debian.org/debian/ stretch main non-free' -y
sudo apt update -y
sudo apt install vim -y
sudo apt install git -y
sudo apt install neofetch -y
sudo apt install figlet -y
sudo apt install ack-grep -y
sudo apt install curl -y


#OS type == Windows Subsystem for Linux(WSL)
string="Microsoft"
#detect WSL or native Linux
if test $(uname -r | sed -n 's/.*\(Microsoft *\).*/\1/p') = $string
then
echo $'\e[31mWSL detected\e[0m'
#echo "WSL detected"
else if test $(uname -si) = "Debian"
echo $'\e[31mDebian detected\e[0m'
su
cat .debian_apt_sources.list > /etc/apt/sources.list
apt update -y

apt install sudo
rm /var/lib/dpkg/lock
rm /var/cache/apt/archives/lock
apt install git
apt install build-essential devscripts -y
apt install chromium -y 
apt install xdg-utils -y
apt install nautilus-dropbox -y
apt install firmware-iwlwifi -y

#echo "Linux detected"
else if test $(uname -si) = "Ubuntu"
echo $'\e[31mUbuntu detected\e[0m'
sudo apt upgrade -y
sudo apt install build-essential devscripts -y
sudo apt install chromium -y 
sudo apt install xdg-utils -y
sudo apt install nautilus-dropbox -y
fi
;;
esac

neofetch


#Link dotfiles
ln -sf ~/ToxumuharuDotfiles/.vimrc ~/.vimrc
ln -sf ~/ToxumuharuDotfiles/.bash_profile ~/.bash_profile
ln -sf ~/ToxumuharuDotfiles/.bashrc ~/.bashrc
echo "Linked dotfiles"
echo "Finishing..."
echo ""

figlet Welcome,
figlet Toxumuharu
