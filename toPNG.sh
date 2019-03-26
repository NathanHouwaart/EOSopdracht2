#!/usr/bin/env bash

#zoekt alle files in de huidige map met file-extentie .jpg
teConverterenFiles=$(find ./ -maxdepth 1 -name '*jpg')

for image in teConverterenFiles; do
    #Maakt een new filename aan. met ${image//.jpg} wordt de extentie .jpg weggehaald. met .png wordt de extentie .png aan de new filename toegevoegd.
    newname=${image//.jpg}.png
    #Convert de image naar newname met een max geometry van 128x128
    convert $image -geometry 128x128 $newname
done
