#!/bin/bash
# Check Website Status
read -p "Enter URL (e.g., https://google.com): " url
response=$(curl -s -o /dev/null -w "%{http_code}" "$url")
if [ "$response" -eq 200 ]; then
    echo "$url is UP (Status: $response)"
else
    echo "$url is DOWN (Status: $response)"
fi
