#!/bin/bash
echo "Enter a number:"
read num
len=${#num}
sum=0
temp=$num
while [ $temp -gt 0 ]; do
    digit=$((temp % 10))
    sum=$((sum + digit ** len))
    temp=$((temp / 10))
done
if [ $sum -eq $num ]; then
    echo "Armstrong Number"
else
    echo "Not an Armstrong Number"
fi
