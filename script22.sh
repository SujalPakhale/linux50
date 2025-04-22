#!/bin/bash
# Log Rotation
log_dir="/var/log"
find "$log_dir" -name "*.log" -mtime +7 -exec gzip {} \;
echo "Old logs compressed."
