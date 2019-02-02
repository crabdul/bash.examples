#!/bin/bash

# read-menu

clear
echo "
Please select:

1. Display system information
2. Display disk space
3. Display Home Space Utilisation
0. Quit
"

read -p "Please enter an option > "

if [[ $REPLY =~ ^[0-3]$ ]]; then
    if [[ $REPLY == 0 ]]; then
        echo "Program terminated"
        exit
    fi
    if [[ $REPLY == 1 ]]; then
        echo "Hostname: $HOSTNAME"
        exit
    fi
    if [[ $REPLY == 2 ]]; then
        df -h
        exit
    fi
    if [[ $REPLY == 3 ]]; then
        du -sh $HOME
        exit
    fi
fi

