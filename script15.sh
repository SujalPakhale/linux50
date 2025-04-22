#!/bin/bash
# Network Speed Test
echo "Running speed test..."
result=$(speedtest-cli --simple)
download=$(echo "$result" | grep "Download" | awk '{print $2}')
upload=$(echo "$result" | grep "Upload" | awk '{print $2}')
ping=$(echo "$result" | grep "Ping" | awk '{print $2}')
echo "Download: ${download}Mbps | Upload: ${upload}Mbps | Ping: ${ping}ms"
