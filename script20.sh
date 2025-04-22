#!/bin/bash
# Battery Status Checker
battery_path="/sys/class/power_supply/BAT0"
if [ -d "$battery_path" ]; then
    capacity=$(cat "$battery_path/capacity")
    status=$(cat "$battery_path/status")
    echo "Battery: $capacity% | Status: $status"
else
    echo "No battery detected."
fi
