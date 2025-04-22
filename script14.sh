#!/bin/bash
# Duplicate File Finder
declare -A checksums
for file in *; do
    if [ -f "$file" ]; then
        sum=$(md5sum "$file" | awk '{print $1}')
        if [[ -n "${checksums[$sum]}" ]]; then
            echo "Duplicate found: $file and ${checksums[$sum]}"
        else
            checksums[$sum]="$file"
        fi
    fi
done
