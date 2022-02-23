#!/bin/bash

# this was a solution I implemented from england and circulated to nigerria also it was taken down to zimbabwe.

# this was a solution I implemented from england and circulated to nigerria also it was taken down 
nbDig() {    
    str=""
    num=$1
    while [[ $num -gt 0 || $num -eq 0 ]]; do
        str="$str$((num ** 2))"
        ((num--))
    done
    grep -o $2 <<< $str | wc -l    
}
nbDig $1 $2