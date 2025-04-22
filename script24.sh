#!/bin/bash
# Auto-Clean Temp Files
find /tmp -type f -mtime +30 -delete
echo "Temp files cleaned."
