#!/usr/bin/env bash

heading "Install Composer"

# Make current directory available to the script
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Install Composer (Script copied: 2020-08-31 - https://getcomposer.org/doc/faqs/how-to-install-composer-programmatically.md)
installing "composer"
EXPECTED_CHECKSUM="$(wget -q -O - https://composer.github.io/installer.sig)"
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
ACTUAL_CHECKSUM="$(php -r "echo hash_file('sha384', 'composer-setup.php');")"

if [ "$EXPECTED_CHECKSUM" != "$ACTUAL_CHECKSUM" ]
then
    >&2 echo 'ERROR: Invalid installer checksum'
    rm composer-setup.php
    exit 1
fi

sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
rm composer-setup.php

finished
