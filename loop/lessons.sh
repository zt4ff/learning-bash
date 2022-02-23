#!/bin/bash
#################################
#          WHILE LOOP           #
#################################

counter=1
while [ $counter -le 10 ]; do
    echo $counter
    ((counter++))
done

echo

# until loops is quite similar to the while loop,
# it will execute the commands within until the test become through 
# while, while execute the command within until the tests becomes false

#################################
#          UNTIL LOOP           #
#################################
counter=1
until [ $counter -gt 10 ]; do
    echo $counter
    ((counter++))
done

echo

# the while and until loop can be basically used for the same things but the use of any
# can describe your code well

# I'd rather stick to only while to avoid confusion to my self or other developers

#################################
#           FOR LOOP            #
#################################

# the for loops will take each item in a list assign them as a variable
# executes the commands within and repeat the same process across the items of the list

names="Segun Kayode Tobi Williams Larry"

for name in $names; do
    echo $name
done

echo 

# RANGE
# we can also process a series of numbers
for value in {1..5}; do
    echo $value
done

echo

# STEPPER
# when defining a range, we can make use of steppers to determine how that loops count
for value in {10..0..2}; do
    echo $value
done

echo


## using loops to process a set of file using wildcards
function convertHTMLtoPHP() {
for value in $1/*.html; do
    cp $value $1/$( basename -s .html $value ).php
done
}

#################################
#             BREAK             #
#################################

# we can use the break statement to break free from the loop

#################################
#           CONTINUE            #
#################################

# the continue command can skip the current loop iteration to the next one


#################################
#            SELECT             #
#################################

# used to prompt a use from a list, e.g:

names="Tobi Funke Lade Vicky Quit"

PS3="Select a character: "

select name in $names; do
    if [ $name = 'Quit' ]; then
        echo "equalls"
        break
    fi
    echo "Hello $name"
done

echo "Bye"