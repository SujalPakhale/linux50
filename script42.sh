#!/bin/bash
echo "Enter a character:"
read char
if [[ "$char" =~ [a-zA-Z] ]]; then
    echo "Alphabet"
else
    echo "Not an Alphabet"
fi
