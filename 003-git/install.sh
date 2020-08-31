#!/usr/bin/env bash

heading "Install Git"

# Make current directory available to the script
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Install apt packages
installing "git"
sudo apt install -y git

finished
