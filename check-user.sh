#!/usr/bin/env bash

if [[ $# -ne 2 ]]; then
    >&2 echo "Error: expect 2 arguments"
    exit 1
fi

case "$1" in
    "-e")
        if [[ -n "$(getent passwd "$2")" ]]; then
            echo "yes"
        else
            echo "no"
        fi
        ;;
    "-i")
        getent passwd "$2"
        ;;
    *)
        >&2 echo "Error: unknown flag"
        exit 1
        ;;
esac