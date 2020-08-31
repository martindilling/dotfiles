#!/usr/bin/env bash

heading "Install Yarn"

# Make current directory available to the script
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Add apt repository
installing "yarn"
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

# Update apt
sudo apt update -y

# Install apt packages
sudo apt install -y yarn

finished
