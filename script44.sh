#!/bin/bash
echo "Enter temperature in Fahrenheit:"
read fahrenheit
celsius=$(( (fahrenheit - 32) * 5/9 ))
echo "Celsius: $celsius"
