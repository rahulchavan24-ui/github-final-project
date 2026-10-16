
#!/bin/bash

# Simple Interest Calculator

echo "================================"
echo "    Simple Interest Calculator"
echo "================================"

read -p "Enter principal amount: " principal
read -p "Enter annual rate of interest (%): " rate
read -p "Enter time period (years): " time

if [[ ! "$principal" =~ ^[0-9]+([.][0-9]+)?$ ]] ||
   [[ ! "$rate" =~ ^[0-9]+([.][0-9]+)?$ ]] ||
   [[ ! "$time" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
    echo "Error: Please enter valid non-negative numbers."
    exit 1
fi

interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" \
    'BEGIN { printf "%.2f", p * r * t / 100 }')

echo "--------------------------------"
echo "Principal: $principal"
echo "Rate: $rate%"
echo "Time: $time years"
echo "Simple Interest: $interest"
echo "================================"
