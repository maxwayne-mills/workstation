#!/bin/bash 

# Check if this either a ubunut or Redhat based system
if [ -f /etc/lsb-release ]; then
	# Install on Debian systems
	clear
	echo "Install HTOP"
	sudo apt-get -y install htop
else
	# Intall on RHEL systems
	echo "Install HTOP"
	sudo yum -y install htop
fi
