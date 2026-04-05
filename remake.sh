#!/usr/bin/env bash

if [[ $# -ne 1 ]] || [ ! -d "$1" ]; then
    echo "Error"
    exit 1
else
    # echo "Directory $1 created"
    touch -d "01 Jan 2026 00:01:00" $1/ciao 
    mkdir $1/mamma
    touch -d "02 Jan 2026 00:01:00" $1/mamma 
    touch -d "03 Jan 2026 00:01:00" $1/guarda 
    touch -d "04 Jan 2026 00:01:00" $1/come 
    mkdir $1/mi
    touch -d "05 Jan 2026 00:01:00" $1/mi 
    touch -d "06 Jan 2026 00:01:00" $1/diverto

    chmod 442 $1/ciao
    chmod 777 $1/mamma
    chmod 400 $1/guarda
    chmod 642 $1/come
    chmod 452 $1/mi
    chmod 421 $1/diverto
fi