#!/usr/bin/env bash

heading "Install System Things"

# Make current directory available to the script
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Install apt packages
installing "xclip"
sudo apt install -y xclip
installing "htop"
sudo apt install -y htop

finished
