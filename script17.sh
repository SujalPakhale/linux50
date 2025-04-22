#!/bin/bash
# System Update Automation
if command -v apt &> /dev/null; then
    sudo apt update && sudo apt upgrade -y
elif command -v yum &> /dev/null; then
    sudo yum update -y
elif command -v dnf &> /dev/null; then
    sudo dnf upgrade -y
else
    echo "Unsupported package manager."
fi
