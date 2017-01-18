#!/bin/bash

# Setup workstation
cd /tmp/
git clone https://github.com/maxwayne-mills/workstation.git
cd workstation
cp bash_aliases ~/.bash_aliases
cp  gitconfig ~/.gitconfig
./install_apps.sh

# Clone scripts directory
cd /mtp
git clone https://github.com/maxwayne-mills/scripts.git
cd scripts/shell
# Install Terraform
./install_terraform.sh

# Install vagrant
./install_vagrant.sh

