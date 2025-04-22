#!/bin/bash
# Check SSL Certificate Expiry
read -p "Enter domain (e.g., google.com): " domain
expiry=$(openssl s_client -connect "$domain:443" -servername "$domain" 2>/dev/null | openssl x509 -noout -dates | grep "notAfter")
echo "SSL Expiry: ${expiry#*=}"
