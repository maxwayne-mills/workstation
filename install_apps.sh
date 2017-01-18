#!/bin/bash 

install_dropbox(){
# If you're running Dropbox on your server for the first time, you'll be asked to copy and paste a link in a working browser to create a new account or add your server to an existing account.
# Once you do, your Dropbox folder will be created in your home directory. Download this Python script to control Dropbox from the command line. 
# For easy access, put a symlink to the script anywhere in your PATH.

# link: https://www.dropbox.com/install-linux
arch=$(uname -a | awk 'BEGIN {fs=" "};{print $12}')
if [ "$arch" = "x86_64" ];then
	dropboxlink=https://www.dropbox.com/download?plat=lnx.x86_64
	cd ~ && wget -O - $dropboxlink | tar xzvf - 
	
	echo "Starting dropbox"
	~/.dropbox-dist/dropboxd
else
	droplink=https://www.dropbox.com/download?plat=lnx.x86_64
	cd ~ && wget -O - $droplink | tar xzvf - 
	
	echo "Starting dropbox"
	~/.dropbox-dist/dropboxd
fi
}

# Check if this either a ubunut or Redhat based system
if [ -f /etc/lsb-release ]; then
	clear
	echo "Download and install dropbox"
	install_dropbox

	clear
	echo "Installing Debian based packages"

	clear
	sudo apt-get install google-drive-ocamlfuse

	clear
	sudo apt-get install git

	clear
	sudo apt-get install golang
else
	echo "this is not a ubuntu system"
fi
