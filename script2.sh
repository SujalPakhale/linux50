#!/bin/bash
# Backup Directory with Timestamp
read -p "Enter directory to backup: " dir
if [ ! -d "$dir" ]; then
    echo "Error: Directory not found!"
    exit 1
fi
backup_name="backup_$(date +%Y%m%d).tar.gz"
tar -czf "$backup_name" "$dir" && echo "Backup saved as $backup_name" || echo "Backup failed!"
