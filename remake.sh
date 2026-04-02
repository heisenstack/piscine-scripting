#!/usr/bin/env bash

if [[ $# -ne 1 ]] || ! [[ -d "$1" ]]; then
    echo "Error"
    exit 1
fi

DIR="$1"

touch "$DIR/ciao"
touch "$DIR/guarda"
touch "$DIR/come"
touch "$DIR/diverto"

mkdir -p "$DIR/mamma"
mkdir -p "$DIR/mi"

chmod 442 "$DIR/ciao"
chmod 400 "$DIR/guarda"
chmod 642 "$DIR/come"
chmod 421 "$DIR/diverto"
chmod 777 "$DIR/mamma"
chmod 352 "$DIR/mi"

touch -t 200101010001 "$DIR/ciao"
touch -t 200201020001 "$DIR/mamma"
touch -t 200301030001 "$DIR/guarda"
touch -t 200401040001 "$DIR/come"
touch -t 200501050001 "$DIR/mi"
touch -t 200601060001 "$DIR/diverto"