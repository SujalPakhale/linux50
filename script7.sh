#!/bin/bash
# Disk Space Alert
threshold=90
usage=$(df / | awk '/\// {print $5}' | tr -d '%')
if [ "$usage" -ge "$threshold" ]; then
    echo "Warning: Disk usage is $usage%!" | mail -s "Disk Alert" admin@example.com
    echo "Alert sent!"
else
    echo "Disk usage is OK ($usage%)."
fi
