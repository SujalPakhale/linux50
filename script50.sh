#!/bin/bash
# System Information Report
echo "===== SYSTEM REPORT ====="
echo "Hostname: $(hostname)"
echo "Uptime: $(uptime -p)"
echo "OS: $(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2)"
echo "CPU: $(lscpu | grep "Model name" | cut -d: -f2 | xargs)"
echo "Memory: $(free -h | awk '/Mem:/ {print $2}')"
echo "Disks: $(lsblk | grep disk | awk '{print $1}')"
echo "========================="
