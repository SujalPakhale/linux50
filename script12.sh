#!/bin/bash
# CPU Temperature Monitor
max_temp=80
temp=$(($(cat /sys/class/thermal/thermal_zone0/temp) / 1000))
if [ "$temp" -ge "$max_temp" ]; then
    echo "WARNING: CPU temperature is ${temp}°C!" | mail -s "CPU Overheat Alert" admin@example.com
else
    echo "CPU temperature: ${temp}°C (Safe)"
fi
