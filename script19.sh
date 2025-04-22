#!/bin/bash
# CSV to JSON Converter
read -p "Enter CSV file: " csvfile
if [ ! -f "$csvfile" ]; then
    echo "Error: File not found!"
    exit 1
fi
jsonfile="${csvfile%.*}.json"
awk -F, 'NR==1 {split($0, headers)} NR>1 {for (i=1; i<=NF; i++) printf "\"%s\":\"%s\"%s", headers[i], $i, (i<NF?", ":"")}' "$csvfile" | jq -s .
echo "JSON saved as $jsonfile"
