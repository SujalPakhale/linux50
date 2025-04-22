#!/bin/bash
# Log Analyzer
read -p "Enter log file: " logfile
if [ ! -f "$logfile" ]; then
    echo "Error: File not found!"
    exit 1
fi
errors=$(grep -c -i "error" "$logfile")
echo "Found $errors error(s) in $logfile."
