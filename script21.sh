#!/bin/bash
# Auto-Restart Failed Service
service="nginx"
if ! systemctl is-active --quiet "$service"; then
    echo "$service is DOWN. Restarting..."
    sudo systemctl restart "$service"
fi
