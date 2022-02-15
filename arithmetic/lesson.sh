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

# expr is similar to let except it does not save the result in a variable and 
# the expression must be divided by space
# expr is useful in command substituation

# format: expr item1 operator item2
expr 5 + 5 # 10
expr "5 + 6" # would print 5 + 6
expr 100+100 # would print 100+100
expr 1000 / 10 # 100
expr 11 % 2 # 1
a=$(expr 10 - 3) # echo $a --> 7


##################################
#     double parenthesis         #
##################################

# we can assign command to variables using command subsistution for instance:
# name=$(some_command)
# we can make use of double parenthesis to perform simple arithmetic

a=$(( 4 * 5 )) # a --> 20


##################################
#     length of a variable       #
##################################

a="Hello World"
echo ${#a} # -> prints the length of the "a" variable which is 11

b=1999
echo ${#b} # -> 4