#!/usr/bin/env bash

#Berekent de total size van de huidige map
#Doet dit door de vijfde kolom van ls -laS te printen
#Telt alle waardes bij elkaar op in variabele 'totalsize'
#Vertaalt vervolgens de total size in human readable bytes en echo't deze naar het scherm

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
