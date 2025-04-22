#!/bin/bash
# Wi-Fi Signal Strength Monitor
iwconfig wlan0 | grep "Signal level" | awk '{print $4}'
