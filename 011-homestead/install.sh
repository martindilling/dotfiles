#!/usr/bin/env bash

heading "Install Homestead"

# Make current directory available to the script
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Install homestead
installing "laravel/homestead box"
if [ 0 = "$(vagrant box list | grep -o "laravel/homestead" | wc -l)" ]; then
  vagrant box add laravel/homestead --provider virtualbox
else
  echo "laravel/homestead already added."
fi

cloning "laravel/homestead"
homestead_dir="${HOME}/Homestead"
homestead_branch="20.04"
if [ -d "${homestead_dir}" ]; then
  echo "${homestead_dir} already exist. If it needs to be updated, do so manually."
else
  git clone https://github.com/laravel/homestead.git ${homestead_dir}
  updating "homestead"
  pushd "${homestead_dir}" >/dev/null 2>&1
  git checkout "${homestead_branch}"
  bash init.sh
  popd >/dev/null 2>&1
fi

finished
