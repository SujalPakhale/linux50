#!/bin/bash
# Password Strength Checker
read -p "Enter password: " password
if [[ ${#password} -ge 8 && "$password" =~ [A-Z] && "$password" =~ [0-9] ]]; then
    echo "Strong password!"
else
    echo "Weak password (min 8 chars, uppercase, number)."
fi
