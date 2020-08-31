#!/usr/bin/env bash

heading "Install Node"

# Make current directory available to the script
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Install nvm (Snippet copied: 2020-08-31 - https://github.com/nvm-sh/nvm#manual-install)
installing "nvm"
export NVM_DIR="$HOME/.nvm" && (
    git clone https://github.com/nvm-sh/nvm.git "$NVM_DIR"
    cd "$NVM_DIR"
    git checkout $(git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1))
) && \. "$NVM_DIR/nvm.sh"

finished
