#!/bin/bash
echo "Enter a number:"
read num
if [[ "$num" == "$(echo $num | rev)" ]]; then
    echo "Palindrome"
else
    echo "Not a Palindrome"
fi
