#!/bin/bash

# This script processes a large file efficiently using line-by-line reading.

input_file="large_file.txt"
pattern="some_pattern"
found=false

# Read and process the file line by line
while IFS= read -r line; do
  if [[ "$line" =~ $pattern ]]; then
    found=true
    break
  fi
done < "$input_file"

if $found; then
  echo "Pattern found"
else
  echo "Pattern not found"
fi