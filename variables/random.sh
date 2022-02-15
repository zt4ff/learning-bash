#!/bin/bash
# a script to print random words from a file with list of words

linecount=$(wc -w ./words.txt)

IFS=" " read -ra lc <<< "$linecount"

number=$RANDOM
let "number %= $lc"

IFS=$'\n' read -r -d "" -a my_array < ./words.txt
echo ${my_array[number]}
