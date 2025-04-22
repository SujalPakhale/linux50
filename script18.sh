#!/bin/bash
# Port Scanner
read -p "Enter target IP/host: " host
for port in {1..1000}; do
    (echo >/dev/tcp/$host/$port) &>/dev/null && echo "Port $port is OPEN"
done
