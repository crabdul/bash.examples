#!/bin/bash

# read-validate: validate input

invalid_input () {
    echo "Invalud input '$REPLY'" >&2
    exit 1
}

read -p "Enter a single item > "

# input is empty (invalid)
[[ -z $REPLY ]] && invalid_input

# input is multiple items (invalid)
(( $(echo $REPLY | wc -w ) > 1 )) && invalid_input

