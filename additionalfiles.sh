#!/bin/bash

#GNOME
sudo apt install gnome-session -y

#darktable
echo 'deb http://download.opensuse.org/repositories/graphics:/darktable/xUbuntu_18.04/ /' | sudo tee /etc/apt/sources.list.d/graphics:darktable.list
curl -fsSL https://download.opensuse.org/repositories/graphics:darktable/xUbuntu_18.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/graphics:darktable.gpg > /dev/null
sudo apt update
sudo apt install darktable

#shortcut
sudo snap install shotcut --classic

#spotify
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update -y
sudo apt install spotify-client -y

#chromium
sudo apt install chromium-browser -y

#mozc
sudo apt install fcitx-mozc -y


