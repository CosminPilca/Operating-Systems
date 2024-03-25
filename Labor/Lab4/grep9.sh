#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <customer_name>"
    exit 1
fi

customer_name=$1

customer_file="${customer_name}.csv"
if [ ! -f "$customer_file" ]; then
    echo "Error: Customer file '$customer_file' not found."
    exit 1
fi

monthly_expenses=$(grep "^OUT," "$customer_file" | awk -F ',' '{sum+=$3} END {print sum}')

echo "Monatliche Ausgaben von $customer_name: $monthly_expenses"
