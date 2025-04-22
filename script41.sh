#!/bin/bash
# Check for Zombie Processes
ps aux | awk '{print $8}' | grep -w Z
