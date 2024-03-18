#!/bin/bash


if [ $# -ne 1 ]; then
    echo "Verwendung: $0 <Ordnerpfad>"
    exit 1
fi


folder_path="$1"


sorted_by_filename=$(ls "$folder_path" | sort)


sorted_by_access_time=$(ls -lt "$folder_path" | awk '{print $9}')


sorted_by_byte_size=$(ls -lS "$folder_path" | awk '{print $9}')

# Anzeigen erstellen
echo "Sortiert nach Dateiname:"
echo "$sorted_by_filename"
echo

echo "Sortiert nach Zugriffszeit:"
echo "$sorted_by_access_time"
echo

echo "Sortiert nach Bytegröße:"
echo "$sorted_by_byte_size"
echo
