#!/usr/bin/env bash

heading "Install Vim"

# Make current directory available to the script
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Install apt packages
installing "vim"
sudo apt install -y vim

finished
