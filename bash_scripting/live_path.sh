#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 https://example.com"
    exit 1
fi

target=$1
output_dir="output_$(echo $target | sed 's/https\?:\/\///')"
mkdir -p "$output_dir"

echo "[+] Crawling with katana: $target ..."
katana -u "$target" -d 3 -silent -nc -o "$output_dir/katana_raw.txt"

echo "[+] Filtering valid HTTP/HTTPS URLs..."
grep -Eo 'https?://[^ ]+' "$output_dir/katana_raw.txt" | sort -u > "$output_dir/urls.txt"

echo "[+] Probing URLs with httpx..."
httpx -l "$output_dir/urls.txt" -silent -status-code -title -tech-detect -o "$output_dir/live_urls.txt"

echo " Live URLs saved to: $output_dir/live_urls.txt"
