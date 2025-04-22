#!/bin/bash
# SSH Login Notifier
user=$(whoami)
ip=$(echo "$SSH_CONNECTION" | awk '{print $1}')
hostname=$(hostname)
echo "User $user logged in from $ip at $(date)" | mail -s "SSH Login Alert on $hostname" admin@example.com
