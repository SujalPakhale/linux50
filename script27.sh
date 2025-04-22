#!/bin/bash
# Auto-Mount USB Drives
usb_drive=$(lsblk -o NAME,MOUNTPOINT | grep -v "/" | tail -1 | awk '{print $1}')
if [ -n "$usb_drive" ]; then
    sudo mount "/dev/$usb_drive" /mnt/usb
    echo "USB mounted at /mnt/usb"
fi
