#!/bin/bash
# Auto-Sync Folders
source="/path/to/source"
destination="/path/to/destination"
rsync -avz --delete "$source/" "$destination/"
echo "Folders synced."
