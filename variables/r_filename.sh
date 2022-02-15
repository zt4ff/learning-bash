#!/bin/bash

# create a script which will take a filename as its first argument and create a dated copy of the file. 
# eg. if our file was named file1.txt it would create a copy such as 2022-02-13_file1.txt.

# To make it a bit harder, see if you can get it so that the date is after the name of the file 
# (eg. file1_2022-02-13.txt (The command basename can be useful here.)

filename=$1

da=$(stat -c "%y" $1 | grep -o "....-..-..")

ext=$(grep -o "\..*$" <<< $1)
base_name=$(basename $1 $ext)

cp $1 "${base_name}_$da$ext"

echo "completed"