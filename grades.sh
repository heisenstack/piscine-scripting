#!/usr/bin/env bash

if [[ $# -ne 1 ]]; then
    >&2 echo "Error: expect 1 argument only!"
    exit 1
fi

declare -a name_array
declare -a grade_array

for i in $(seq 1 $1); do
    read -p "Student Name #$i: " name
    read -p "Student Grade #$i: " grade

    if ! [[ "$grade" =~ ^[0-9]+$ ]] || [[ "$grade" -gt 100 ]]; then
        >&2 echo "Error: The grade '$grade' is not a valid input. Only numerical grades between 0 and 100 are accepted."
        exit 1
    fi

    name_array+=("$name")
    grade_array+=("$grade")
done

for i in $(seq 0 $(($1 - 1))); do
    name=${name_array[$i]}
    grade=${grade_array[$i]}

    if [[ "$grade" -ge 90 ]]; then
        echo "$name: You did an excellent job!"
    elif [[ "$grade" -ge 70 ]]; then
        echo "$name: You did a good job!"
    elif [[ "$grade" -ge 50 ]]; then
        echo "$name: You need a bit more effort!"
    else
        echo "$name: You had a poor performance!"
    fi
done