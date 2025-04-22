#!/bin/bash
# Generate SSH Key Pair
read -p "Enter key name: " keyname
ssh-keygen -t rsa -b 4096 -f ~/.ssh/"$keyname"
echo "SSH key pair generated."
