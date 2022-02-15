#!/bin/bash

# gets a file piped into it and prints the third line

read -r -d "\n" -a my_array < <(cat)
echo ${my_array[2]}

