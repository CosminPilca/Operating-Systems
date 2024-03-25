#!/bin/bash


if [ "$#" -lt 2 ]; then
    echo "Usage: $0 text file1 [file2 ...]"
    exit 1
fi

TEXT=$1

shift
for FILE in "$@"; do
    if grep -q "$TEXT" "$FILE"; then
        sed "/$TEXT/d" "$FILE"
    else
        echo "The word '$TEXT' is not found in $FILE."
    fi
done
