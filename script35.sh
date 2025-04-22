#!/bin/bash
# Website Uptime Monitor
url="https://example.com"
status=$(curl -s -o /dev/null -w "%{http_code}" "$url")
if [ "$status" -ne 200 ]; then
    echo "Website is DOWN! Status: $status" | mail -s "Website Alert" admin@example.com
fi
