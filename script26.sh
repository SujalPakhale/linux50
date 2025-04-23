#!/bin/bash
echo "Enter three numbers:"
read a b c
max=$a
if [ $b -gt $max ]; then
    max=$b
fi
if [ $c -gt $max ]; then
    max=$c
fi
echo "Largest: $max"
