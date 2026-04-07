#!/usr/bin/env bash

do_add() {
    echo $(echo "$1 + $2" | bc)
}

do_sub() {
    echo $(echo "$1 - $2" | bc)
}

do_mult() {
    echo $(echo "$1 * $2" | bc)
}

do_divide() {
    echo $(echo "$1 / $2" | bc)
}

if [[ $# -ne 3 ]]; then
    >&2 echo "Error: expect 3 arguments"
    exit 1
fi

if ! [[ "$1" =~ ^-?[0-9]+$ ]] || ! [[ "$3" =~ ^-?[0-9]+$ ]]; then
    >&2 echo "Error: invalid number"
    exit 4
fi

if [[ "$2" == "/" ]] && [[ "$3" -eq 0 ]]; then
    >&2 echo "Error: division by 0"
    exit 2
fi

case "$2" in
    "+")
        do_add "$1" "$3"
        ;;
    "-")
        do_sub "$1" "$3"
        ;;
    "*")
        do_mult "$1" "$3"
        ;;
    "/")
        do_divide "$1" "$3"
        ;;
    *)
        >&2 echo "Error: invalid operator"
        exit 3
        ;;
esac