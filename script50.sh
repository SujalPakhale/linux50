#!/bin/bash
echo "Enter directory path:"
read dir
largest=$(find "$dir" -type f -exec du -h {} + | sort -rh | head -n 1)
echo "Largest file: $largest"
