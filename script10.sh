#!/bin/bash
# File Encryption/Decryption
echo "1. Encrypt | 2. Decrypt"
read -p "Choose option: " opt
read -p "Enter filename: " file
case "$opt" in
    1) openssl enc -aes-256-cbc -salt -in "$file" -out "$file.enc" ;;
    2) openssl enc -aes-256-cbc -d -in "$file" -out "${file%.enc}" ;;
    *) echo "Invalid option!" ;;
esac
