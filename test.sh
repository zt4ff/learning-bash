#!/bin/bash

##### function definition
function Help() {
    echo "Welcome to the help page"
    echo "l - list something"
}

name=World

###### main program

while getopts ":hn" option; do
    case $option in
        h) # help option
            Help
            exit;;
        n) # input name
            name=$OPTARG;;
        \?) # invalid option
            echo "Invalid options"
            exit;;
    esac
done


echo "Hello $name"