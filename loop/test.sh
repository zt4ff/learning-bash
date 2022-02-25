#!/bin/bash

declare -a arr=(0 1 2 3 4 5 6 7 8 9)

function length() {
    echo ${#arr[@]}
}

echo ${arr[5]}

length

unset arr[5]

length

echo ${arr[6]}