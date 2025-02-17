#!/bin/bash

# This script attempts to process a large file, but it fails due to inefficient memory management.

input_file="large_file.txt"

# Read the entire file into memory
file_content=$(cat "$input_file")

# Process the file content (e.g., search for a pattern)
pattern="some_pattern"
if [[ "$file_content" =~ $pattern ]]; then
  echo "Pattern found"
else
  echo "Pattern not found"
fi