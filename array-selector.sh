#!/usr/bin/env bash

array=("red" "blue" "green" "white" "black")

if [[ $# -ne 1 ]] || ! [[ "$1" =~ ^[0-9]+$ ]]; then
    echo "Error"
    exit 0
fi

if [[ "$1" -lt 1 ]] || [[ "$1" -gt ${#array[@]} ]]; then
    echo "Error"
    exit 0
fi


echo ${array[$1 - 1]}