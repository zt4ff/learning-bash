#!/bin/bash

## takes both name and age from arguments options and echos a greeting message with them

function Help() {
    echo "[command_name] [options]"
    echo "example:  ./cli-args -n Kayode -a 44"
    echo "options:"
    echo "n     -       name"
    echo "a     -       age"
    echo "h     -       print help"
}



## main program

name="name"
age=

while getopts ":hn:a:" option; do
    case $option in
        h) # help
            Help
            exit;;
        n) # input name variable
            name=$OPTARG;;
        a) # input age variable
            age=$OPTARG;;
        \?) # invalid options
            echo "Invalid option. You can check the help manual" 
            exit;;
    esac
done

echo "Welcome $name, I guess you are $age years old"