#!/usr/bin/env bash

if [[ $# -ne 1 ]] || ! [[ "$1" =~ ^[0-9]+$ ]] || [[ "$1" -lt 1 ]] || [[ "$1" -gt 100 ]]; then
    echo "Error: wrong argument"
    exit 1
fi

secret=$1
tries=5
found=0

for i in $(seq 1 $tries); do
    tries_left=$((tries - i + 1))

    while true; do
        echo "Enter your guess ($tries_left tries left):"
        read guess

        if [[ -z "$guess" ]] || ! [[ "$guess" =~ ^[0-9]+$ ]]; then
            continue
        fi

        if [[ "$guess" -lt 1 ]] || [[ "$guess" -gt 100 ]]; then
            continue
        fi

        break
    done

    if [[ "$guess" -gt "$secret" ]]; then
        echo "Go down"
    elif [[ "$guess" -lt "$secret" ]]; then
        echo "Go up"
    else
        echo "Congratulations, you found the number in $i moves!"
        found=1
        break
    fi
done

if [[ $found -eq 0 ]]; then
    echo "You lost, the number was $secret"
fi