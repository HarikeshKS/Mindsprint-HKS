#!/bin/bash

# Create and write to a file
echo "Creating and writing to 'example.txt'"
echo "Hello, World!" > example.txt

# Append text to the file
echo "Appending text to 'example.txt'"
echo "This is an appended line." >> example.txt

# Read from the file
echo "Reading from 'example.txt'"
cat example.txt

# Check if the file exists
if [ -f example.txt ]; then
    echo "'example.txt' exists."
else
    echo "'example.txt' does not exist."
fi

# Delete the file
echo "Deleting 'example.txt'"
rm example.txt