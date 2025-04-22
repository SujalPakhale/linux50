#!/bin/bash
# Password Generator
read -p "Password length: " length
if ! [[ "$length" =~ ^[0-9]+$ ]]; then
    echo "Error: Enter a valid number!"
    exit 1
fi
chars="A-Za-z0-9!@#$%^&*()"
password=$(tr -dc "$chars" < /dev/urandom | head -c "$length")
echo "Generated Password: $password"
