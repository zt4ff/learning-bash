#!/bin/bash
# a script to print random words from a file with list of words
# make it such that the terminal can take a number arguments and run build the words agains words that have that number of characters

echo $1

linecount=$(grep "^.\{$1\}$" words.txt | wc -w)

IFS=" " read -ra lc <<< "$linecount"

number=$RANDOM
let "number %= $lc"

IFS=$'\n' read -r -d "" -a my_array < <(grep "^.\{$1\}$" words.txt)
echo ${my_array[number]}
