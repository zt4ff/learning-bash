#!/bin/bash

# Create a Bash script which will print a message based upon which day of the week it is 
# (eg. 'Happy hump day' for Wedensday, 'TGIF' for Friday etc).

# get the day of the week (0-6) - 0 is sunday
day_of_week=$( date +"%w")


case $day_of_week in
    0) echo "welcome to the sunny day"; exit;;
    1) echo "here we go again, :("; exit;;
    2) echo "Tuesday ain't that cool"; exit;;
    3) echo "movies night on wednesday"; exit;;
    4) echo "gotta respect today cause I was born today"; exit;;
    5) echo "TGIF!!"; exit;;
    6) echo "weekend but I have to fun plan. Back to work!"; exit;;
esac