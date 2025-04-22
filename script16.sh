#!/bin/bash
# Process Killer
read -p "Enter process name: " proc_name
pids=$(pgrep "$proc_name")
if [ -z "$pids" ]; then
    echo "No such process running."
else
    kill -9 "$pids"
    echo "Killed process(es): $pids"
fi
