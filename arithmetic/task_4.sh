#!/bin/bash

# Now let's play with the previous script (task_3). Modify it so that you can specify as a command line argument 
# the upper limit of the random number. Can you make it so that a lower limit can be specified also? 
# eg. if I ran ./random.sh 10 45 it would only return random numbers between 10 and 45.

###########################################
#                   CODE                  #            
###########################################

# if they are two arguments, use min and maximum

if [[ "$1" && "$2" ]]; then
    echo $(( $RANDOM % $(($2 - $1 + 1)) + $1  )); exit
fi

echo $(($RANDOM % $(($1 + 1)) ))

# else use only the passed argument as the maximum and zero as minimum