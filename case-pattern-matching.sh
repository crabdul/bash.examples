#!/bin/bash

read -p "enter word > "

case $REPLY in
    [[:alpha:]])     echo "Is a single alphabetic character." ;;
    [ABC][0-9])      echo "Is A, B, C followed by a digit." ;;
    ???)            echo "Is three characters long." ;;
    *.txt)          echo "Is a word ending in '.txt'";;
    *)              echo "Is something else." ;;
esac

