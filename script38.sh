#!/bin/bash
# Disk I/O Performance Test
echo "Running disk speed test..."
dd if=/dev/zero of=/tmp/testfile bs=1G count=1 oflag=dsync
rm /tmp/testfile
