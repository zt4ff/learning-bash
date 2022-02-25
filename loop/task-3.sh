#!/bin/bash

# Create a command line version of the game TicTacToe
# Make it so that you can play against the computer

# makes use of array 0 - 8 to define the tile and make use of the number 1 - 9 to interact with the game
declare -a tiles=()

################################
#          COMPUTER BOT        #
################################
# an array to keep available options for the computer to make random moves
declare -a availoption=(0 1 2 3 4 5 6 7 8)


# a funtion to get a random number out of this array
function computermove() {
    i=$(($RANDOM % 9))

    # this isn't a recommend way to go about this
    # I'd find a better way around this if I understand more about
    # arrays and list in bash script
    if [ -z ${availoption[$i]} ]; then
        computermove
    else
        echo ${availoption[$i]}
    fi
}

################################
#         DISPLAY BOARD        #
################################
function display_helper() {
    echo $( [[ ${tiles[$1]} ]] && echo ${tiles[${1}]} || echo "-" )
}

# function to display table
function display_board() {
    echo ----------
    echo "$(display_helper 0) | $(display_helper 1) | $(display_helper 2)"
    echo ----------
    echo "$(display_helper 3) | $(display_helper 4) | $(display_helper 5)"
    echo ----------
    echo "$(display_helper 6) | $(display_helper 7) | $(display_helper 8)"
    echo ----------
}



display_board

# while the arrays of nummber is empty keep looping and expecting a value from the user
while [ ${#tiles[@]} -lt 9 ]; do
    read -p "Enter a number between the cells: " move
    # move is valid
    if [[ $move -ge 1 && $move -le 9 ]]; then
        # if move is not already played
        if [ -z ${tiles[${move}]} ]; then
            move=$((move - 1))
            echo mm: $move 
            tiles[${move}]="X"
            # unset current move from computer move
            unset availoption[$move]
            # computer makes it own moves here
            l=${#availoption[@]}
            cm=$( computermove $l )
            unset availoption[$cm]

            echo "cm: $cm"
            tiles[${cm}]="O"

            display_board
        fi
    fi
done
