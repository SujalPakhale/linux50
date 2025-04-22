#!/bin/bash
# Monitor CPU Frequency
watch -n 1 "cat /proc/cpuinfo | grep MHz"
