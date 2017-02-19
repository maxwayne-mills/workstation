#!/bin/bash

## Install sync client
## Feb 12 2016

# Install repository
echo "deb http://linux-packages.resilio.com/resilio-sync/deb resilio-sync non-free" | sudo tee /etc/apt/sources.list.d/resilio-sync.list

# Add public key
wget -qO - https://linux-packages.resilio.com/resilio-sync/key.asc | sudo apt-key add -

sudo apt-get update
sudo apt-get install resilio-sync
