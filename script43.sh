#!/bin/bash
# Secure File Deletion
read -p "Enter file to securely delete: " file
shred -u -z -n 5 "$file"
echo "File securely deleted."
