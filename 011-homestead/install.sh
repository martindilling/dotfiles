#!/usr/bin/env bash

heading "Install Homestead"

# Make current directory available to the script
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Install homestead
installing "laravel/homestead box"
vagrant box add laravel/homestead --provider virtualbox

cloning "laravel/homestead"
git clone https://github.com/laravel/homestead.git ~/Homestead

updating "homestead"
pushd ~/Homestead >/dev/null 2>&1
git checkout release
bash init.sh
popd >/dev/null 2>&1

finished
