#!/bin/bash
# System Monitoring Dashboard
echo -e "\n===== SYSTEM MONITOR ====="
echo "CPU Usage: $(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')%"
echo "Memory Usage: $(free -m | awk '/Mem:/ {print $3 "MB / " $2 "MB"}')"
echo "Disk Usage: $(df -h / | awk '/\// {print $5 " used (" $3 " / " $2 ")"}')"
echo "Network: $(ip a | grep "inet " | grep -v "127.0.0.1")"
echo -e "=========================\n"
