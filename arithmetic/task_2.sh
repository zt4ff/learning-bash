#!/bin/bash

# Write a Bash script which will print tomorrows date

###################################
#              CODE HERE          #
###################################

# get the seconds from Jan 1 1970 - Epoch date

today=$(date +"%s")

seconds_in_a_day=$(( 24 * 60 * 60 ))

tomorrow=$(( $today + $seconds_in_a_day ))

echo $(date --date="@$tomorrow" +"%a - %D")