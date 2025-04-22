#!/bin/bash
# Check for Kernel Updates
uname -r
if command -v apt &> /dev/null; then
    apt list --upgradable | grep linux-image
fi
