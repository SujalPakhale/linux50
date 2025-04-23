#!/bin/bash
echo "Enter a character:"
read char
case $char in
    [aeiouAEIOU]) echo "Vowel" ;;
    *) echo "Consonant" ;;
esac
