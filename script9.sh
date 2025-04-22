#!/bin/bash
# User Account Manager
echo "1. Add User | 2. Delete User"
read -p "Choose option: " opt
case "$opt" in
    1) read -p "Enter username: " user
       sudo useradd "$user" && echo "User $user added." ;;
    2) read -p "Enter username: " user
       sudo userdel "$user" && echo "User $user deleted." ;;
    *) echo "Invalid option!" ;;
esac
