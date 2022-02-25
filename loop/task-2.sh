#!/bin/bash

# Write a Bash script which will take a single command line argument 
# (a directory) and will print each entry in that directory. 
# If the entry is a file it will print it's size. 
# If the entry is a directory it will print how many items are in that directory.

for file in $1**; do
    if [ -f $file ]; then
        filesize=$( ls -s $file )
        # split the string here into an array knowing the first item in the array is the size of the file
        readarray -d " " -t arr <<< $filesize
        echo $file [file] ${arr[0]}
    else
        echo $file [dir] $( ls $file | wc -l )
    fi
done