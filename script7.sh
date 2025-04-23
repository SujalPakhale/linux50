#!/bin/bash
echo "Enter filename:"
read filename
if [ -r "$filename" ]; then
    echo "Readable"
fi
if [ -w "$filename" ]; then
    echo "Writable"
fi
if [ -x "$filename" ]; then
    echo "Executable"
fi
