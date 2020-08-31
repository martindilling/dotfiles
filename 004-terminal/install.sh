#!/usr/bin/env bash

heading "Install Terminal"

# Make current directory available to the script
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Install Guake
installing "guake"
sudo add-apt-repository ppa:linuxuprising/guake -y
sudo apt update -y
sudo apt install guake -y
# Restore Guake settings
guake --restore-preferences $DIR/files/myguakeprefs

# Install apt packages
installing "zsh"
sudo apt install -y zsh

# Install oh-my-zsh
installing "oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Install a few oh-my-zsh plugins
installing "oh-my-zsh plugins"
clone zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
clone zsh-users/zsh-history-substring-search ~/.oh-my-zsh/plugins/zsh-history-substring-search

# Install theme
installing "oh-my-zsh theme"
theme="$ZSH/themes/nils.zsh-theme"
if [ -f $theme ] ; then
    rm $theme
fi
ln -s $DIR/files/theme $theme

# Set ZSH as default shell
#chsh -s $(which zsh)

finished
