#!/bin/bash

# Script Name: repeat.sh
# Description: Repeats a given string a specified number of times.
# Usage: ./repeat.sh "<string>" <number>

# Function to display usage information
usage() {
    echo "Usage: $0 <string> <number>"
    echo "  <string> : The string to be repeated."
    echo "  <number> : The number of times to repeat the string (non-negative integer)."
    exit 1
}

# Check if exactly two arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Error: Invalid number of arguments."
    usage
fi

STRING="$1"
NUMBER="$2"

# Validate that the second argument is a non-negative integer
if ! [[ "$NUMBER" =~ ^[0-9]+$ ]]; then
    echo "Error: The second argument must be a non-negative integer."
    usage
fi

# Use a for loop to print the string the specified number of times
for ((i=1; i<=NUMBER; i++)); do
    echo -n "$STRING"
done

# Print a newline at the end for better formatting
echo ""