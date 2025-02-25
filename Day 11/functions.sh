#!/bin/bash

# Function to add two numbers
add() {
    result=$(( $1 + $2 ))
    echo "The sum of $1 and $2 is: $result"
}

# Function to check if a file exists
file_exists() {
    if [ -e "$1" ]; then
        echo "File '$1' exists."
    else
        echo "File '$1' does not exist."
    fi
}

# Calling the functions
add 5 10
file_exists "/path/to/your/file"

# Function to display system information in Windows OS
system_info() {
    echo "System Information:"
    echo "Operating System: $(uname -o)"
    echo "Kernel Version: $(uname -r)"
    echo "Disk Usage: "
    df -h
}
# Calling the system_info function
system_info