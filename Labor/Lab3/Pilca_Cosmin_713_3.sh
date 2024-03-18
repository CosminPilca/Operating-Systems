#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <folder_path>"
    exit 1
fi

folder_path="$1"


sorted_by_filename=$(ls "$folder_path" | sort)


sorted_by_access_time=$(ls -lt "$folder_path" | awk '{print $9}')


sorted_by_byte_size=$(ls -lS "$folder_path" | awk '{print $9}')


echo "Sorted by filename:"
echo "$sorted_by_filename"
echo

echo "Sorted by access time:"
echo "$sorted_by_access_time"
echo

echo "Sorted by byte size:"
echo "$sorted_by_byte_size"
echo
