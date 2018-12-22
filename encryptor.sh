#! /bin/bash

file=$1
encrypted_code=$(cat "$file"|tr "\n" " " | tr -dc [:alnum:] | tr "[:upper:]" "[:lower:]" | sed 's/1/one/g; s/2/two/g; s/3/three/g; s/4/four/g; s/5/five/g; s/6/six/g; s/7/seven/g; s/8/eight/g; s/9/nine/g; s/0/zero/'|  tr "abcdefghijklmnopqrstuvwxyz" "FGHIJKLMNOPQRSTUVWXYZABCDE" > cipher_text) 
echo "$encrypted_code"
