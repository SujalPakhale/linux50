#!/bin/bash
# VPN Connection Checker
if ! pgrep -x "openvpn" >/dev/null; then
    echo "VPN is not running!" | mail -s "VPN Alert" admin@example.com
fi
