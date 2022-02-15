#!/bin/bash

# create a script which will take a filename as its first argument and create a dated copy of the file. 
# eg. if our file was named file1.txt it would create a copy such as 2022-02-13_file1.txt.

filename=$1

# make use of stat
da=$(stat -c "%y" $1 | grep -o "....-..-..")

# the underscore is a valid name in bash so $da_ doesn't exist.
# we can wrap the variable close to the underscore with curly braces
cp $1 "${da}_$1"

echo "completed"