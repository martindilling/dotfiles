#!/usr/bin/env bash

heading "Install PHP"

# Make current directory available to the script
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Add apt repository
installing "php"
sudo apt install -y software-properties-common
sudo add-apt-repository ppa:ondrej/php -y

# Update apt
sudo apt update -y

# Install apt packages
sudo apt install -y php7.4 php7.4-common php7.4-cli php7.4-fpm
sudo apt install -y php7.4-curl php7.4-json php7.4-gd php7.4-mbstring php7.4-intl php7.4-bcmath php7.4-zip php7.4-xml

finished
