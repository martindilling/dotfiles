#!/usr/bin/env bash

heading "Install Basic Packages"

# Make current directory available to the script
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Install apt packages
installing "curl"
sudo apt install -y curl
installing "ruby"
sudo apt install -y ruby

finished
