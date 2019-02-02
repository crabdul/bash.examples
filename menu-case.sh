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

case $REPLY in
    0)  echo "Program terminated"
        exit
        ;;
    1)  echo "Hostname: $HOSTNAME"
        exit
        ;;
    2)  df -h
        exit
        ;;
    3) du -sh $HOME
        exit
        ;;
    *) echo "Invalid entry" >&2
        exit 1
        ;;
esac
