#!/bin/bash

if [ "$#" -eq 0 ]; then
    echo "Introduceti macar un fisier. "
    exit 1
fi

index=0

for file in "$@"; do
    if (( index % 2 == 0 )); then
        cat "$file"
    else
        awk '{
            for (i = NF; i > 0; i--) {
                printf "%s", $i
                if (i > 1) printf ":"
            }
            printf "\n"
        }' "$file"
    fi
    ((index++))
done
