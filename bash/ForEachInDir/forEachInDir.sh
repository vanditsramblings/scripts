#!/bin/bash


for dir in /$1/*/
do
    dir=${dir%*/}
    echo "${dir##*/}"

    # Add custom commands here

done
