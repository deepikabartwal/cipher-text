#! /bin/bash

file=$1
decipher_code=$(cat "$file" | tr "FGHIJKLMNOPQRSTUVWXYZABCDE" "abcdefghijklmnopqrstuvwxyz") 
echo "$decipher_code"
