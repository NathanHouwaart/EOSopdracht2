#!/usr/bin/env bash

x=$(ls -laS | awk '{ print $5 }')

bytesToHuman() {
b=${1:-0}; d=''; s=0; S=(Bytes {K,M,G,T,P,E,Z,Y}iB)
while ((b > 1024)); do
d="$(printf ".%02d" $((b % 1024 * 100 / 1024)))"
b=$((b / 1024))
let s++
done
echo "$b$d ${S[$s]}"
}

total_size=0;
for item in $x; do
total_size=$(($item+$total_size))
done

echo $total_size
bytesToHuman $total_size
