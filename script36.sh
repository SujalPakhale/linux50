#!/bin/bash
# Bulk Image Resizer
for img in *.jpg; do
    convert "$img" -resize 50% "resized_$img"
done
echo "Images resized."
