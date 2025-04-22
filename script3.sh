#!/bin/bash
# Find and Delete Old Files
read -p "Enter path: " path
read -p "Delete files older than (days): " days
if [ ! -d "$path" ]; then
    echo "Error: Invalid directory!"
    exit 1
fi
find "$path" -type f -mtime +"$days" -exec rm -v {} \;
echo "Deleted files older than $days days."
