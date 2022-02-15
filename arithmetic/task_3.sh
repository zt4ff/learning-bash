#!/bin/bash

# Remember when we looked at variables we discovered $RANDOM will return a random number. 
# This number is between 0 and 32767 which is not always the most useful. 
# Let's write a script which will use this variable and some arithmetic 
# (hint: play with modulus) to return a random number between 0 and 100

###################################
#              CODE HERE          #
###################################

# random number between 0 and 32767

echo $(($RANDOM % 101))