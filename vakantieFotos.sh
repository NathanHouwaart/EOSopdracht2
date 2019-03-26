#!/usr/bin/env bash

find $1 -type f -maxdepth 1| grep vakantie |xargs -I '{}' mv {} /Users/nathanhouwaart/CLionProjects/EOSopdracht2/afbeeldingen/vakantiefotos/

