#!/bin/bash
echo "Enter a string:"
read str
if [[ "$str" == "$(rev <<< "$str")" ]]; then
    echo "Palindrome"
else
    echo "Not a Palindrome"
fi
