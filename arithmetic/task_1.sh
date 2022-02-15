#!/bin/bash

# Create a simple script which will take two command line arguments 
# and then multiply them together using each of the methods detailed above.

###################################
#              CODE HERE          #
###################################

function Let_Multiply() {
    let "a = $1 * $2"
    echo $a
}

function Expr_Multiply() {
    expr $1 * $2
}

function Double_Multiply() {
    echo $(($1 * $2))
}

while getopts "o:f:s:led" option; do
    case $option in
        f) first=${OPTARG};;
        s) second=${OPTARG};;
        l) Let_Multiply $first $second; exit;;
        e) Expr_Multiply $first $second; exit;;
        d) Double_Multiply $first $second; exit;;
        \?) echo "Invalid option"; exit;;
    esac
done

if []

echo "Hello $Name $1"