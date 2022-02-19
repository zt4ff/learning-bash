#!/bin/bash
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