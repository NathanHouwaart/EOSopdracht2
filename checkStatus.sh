#!/usr/bin/env bash
logfile=logfile.txt

if [ -f logfile.txt ] ;then
    rm logfile.txt
fi

touch logfile.txt

bestanden=$(find $1 -type f -maxdepth 1)

echo "uitgevoerd command: $2" >> $logfile
echo >> $logfile
for bestand in $bestanden;do
    if [ $2 $bestand ];then
echo "test op $bestand : geslaagd" >> $logfile
    else
echo "test op $bestand : failed" >> $logfile
    fi
done
