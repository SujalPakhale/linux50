#!/bin/bash
# List All Installed Packages
if command -v apt &> /dev/null; then
    apt list --installed
elif command -v rpm &> /dev/null; then
    rpm -qa
fi
