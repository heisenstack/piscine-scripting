#!/usr/bin/env bash

if [[ $# -ne 1 ]] || [ ! -d "$1" ]; then
    echo "Error"
    exit 1
fi

dir=$1

files=(
    "ciao:01 Jan 2026 00:01:00:442"
    "mamma:02 Jan 2026 00:01:00:777"
    "guarda:03 Jan 2026 00:01:00:400"
    "come:04 Jan 2026 00:01:00:642"
    "mi:05 Jan 2026 00:01:00:452"
    "diverto:06 Jan 2026 00:01:00:421"
)

dirs=("mamma" "mi")

for d in "${dirs[@]}"; do
    mkdir "$dir/$d"
done

for entry in "${files[@]}"; do
    name=$(echo $entry | cut -d: -f1)
    date=$(echo $entry | cut -d: -f2-3)
    perm=$(echo $entry | cut -d: -f4)

    touch -d "$date" "$dir/$name"
    chmod $perm "$dir/$name"
done