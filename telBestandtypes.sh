#!/usr/bin/env bash

files=$(find $1 -type f -maxdepth 1)

aantalVar2Files=0
aantalVar3Files=0
aantalVar4Files=0
debug=0


for file in $files; do
    case $file in
        *$2)
#        Files die overeenkomen met var 2
        ((aantalVar2Files++))
        ;;
        *$3)
#        Files die overeenkomen met var 3
        ((aantalVar3Files++))
        ;;
        *$4)
#        Files die overeenkomen met var 4
        ((aantalVar3Files++))
        ;;
        *)
#        Files die niet overeenkomen met een car
        ((debug++))
        ;;
    esac
done


echo aantal $2 files:      $aantalVar2Files
echo aantal $3 files:      $aantalVar3Files
echo aantal $4 files:      $aantalVar4Files
echo aantal overige files: $debug

