#/bin/bash

## Set up working enviroment 
##

## Create .ssh directory and private and public keys

key=$(which create_ssh_key.sh)

$key
