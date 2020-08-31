#!/usr/bin/env bash

heading "Install Basic Apps"

# Make current directory available to the script
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Install apt packages
installing "virtualbox"
sudo apt install -y virtualbox
installing "chromium-browser"
sudo apt install -y chromium-browser

# Install flatpak packages
installing "DBeaver"
flatpak install flathub io.dbeaver.DBeaverCommunity -y
installing "Slack"
flatpak install flathub com.slack.Slack -y
installing "Sublime Text 3"
flatpak install flathub com.sublimetext.three -y
installing "Postman"
flatpak install flathub com.getpostman.Postman -y

finished
