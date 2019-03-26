#!/usr/bin/env bash

mkdir -p afbeeldingen


bestanden=$(find $1 -maxdepth 1 -iname '*test*')

for bestand in $bestanden; do
    mv $bestand /Users/nathanhouwaart/CLionProjects/EOSopdracht2/afbeeldingen/
done

#find $1 -maxdepth 1 -name '*test*' -exec mv '{}' /Users/nathanhouwaart/CLionProjects/EOSopdracht2/afbeeldingen  \;
