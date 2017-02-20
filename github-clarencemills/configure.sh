#/bin/bash
## Set up working enviroment 

## Create .ssh directory and private and public keys
key=$(which create_ssh_key.sh)

# Create keys to be imported within the environent, keys will need to be imported within GITHUB security settings.
$key
