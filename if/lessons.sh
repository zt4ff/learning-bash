#!/bin/bash

##################################
#       BASIC IF STATEMENT       #
##################################

if [ $1 -gt 100 ]; then
    echo Hey that\'s a large number
    pwd
fi

# The [] square bracket is actually a reference to the command test.
# meaning that we can nake use of the options for conditional checks

# some common conditional are:
# -! expr                 the expression false
# -n str                  the letter of string is greater than zero
# -z str                  the  length of string is zero, it's empty
# str = str2              str1 is equal to str2
# int1 -eq int2           int1 is numerically equal to int2
# int1 -gt int2           int1 is numerically greater than to int2
# int1 -lt int2           int1 is numerically less than to int2
# -d File                 File exists and is a directory
# -e file                 file exists
# -r file                 file exists and read permission is granted
# -s file                 file size is greater than 0
# -s file                 file execution permission is granted


##################################
#      NESTED IF STATEMENT       #
##################################
if [ $1 -gt 100 ]; then
    echo "$1 is greater than 100"

    if (( $1 % 2 == 0 )); then
        echo "And is also an even number"
    fi
fi



##################################
#       IF - ELSE STATEMENT      #
##################################

if [ $1 -gt 100 ]; then
    echo "$1 is greater than 100"
else
    echo "$1 is lesser than 100"
fi

##################################
#     IF-ELIF-ELSE STATEMENT     #
##################################

if (( $1 % 2 == 0 )); then
    echo "$1 is even"

elif (( $1 % 2 != 0 )); then
    echo "$1 is odd"
fi

##################################
#         CASE STATEMENT         #
##################################

case $2 in
    start) echo "starting";;
    stop) echo  "stoping";;
    *) echo "I don't know what to do rn"
esac