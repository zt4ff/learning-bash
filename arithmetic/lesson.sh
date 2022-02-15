#!/bin/bash

# we can make use different method depending on our approach 

##################################
#               let              #
##################################

# we can make use of let for arithmetic operation and it saves the result in a variable

let a=4+4 # 8

let "a = 5 + 4" # 9

let a++ #10

let "a = 5 * 4"

let "a = $1 + 30" # adds the first arguments to 30

let "a = 10 % 8" # modulus operator would return 2

##################################
#               expr             #
##################################
