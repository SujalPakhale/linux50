#!/bin/bash
# Detect Brute-Force SSH Attacks
grep "Failed password" /var/log/auth.log | awk '{print $11}' | sort | uniq -c | sort -nr
