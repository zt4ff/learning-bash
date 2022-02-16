#!/bin/bash

# Create a Bash script which will accept a file as a command line argument and analyse it in certain ways. 
# eg. you could check if the file is executable or writable. 
# You should print a certain message if true and another if false.

# check if argument is a file

if [ ! -z $1 ]; then
    if [ -d $1 ]; then
        echo "$1 is a directory but not a file"
    elif [ -e $1 ]; then
        echo "$1 is a file"

        # is executable
        if [ -r $1 ]; then
            echo "$1 is readable"
        fi

        if [ -x $1 ]; then
            echo "$1 is executable"
        fi
    else
        echo "$1 is not a file."
        echo "you provide a valid a file" 
    fi
fi
