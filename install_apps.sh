#!/bin/bash 

install_dropbox(){
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
else
	echo "this is not a ubuntu system"
fi
