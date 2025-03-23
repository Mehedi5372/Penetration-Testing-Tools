#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <domain>"
    exit 1
fi

DOMAIN=$1
echo "[+] Gathering subdomains for $DOMAIN..."
subfinder -d $DOMAIN -silent | tee subdomains.txt

echo "[+] Running WHOIS lookup..."
whois $DOMAIN | tee whois.txt

echo "[+] Scanning for open ports..."
nmap -sV -T4 -iL subdomains.txt -p- | tee nmap_scan.txt

echo "[+] Recon completed!"
