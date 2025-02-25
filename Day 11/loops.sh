#!/bin/bash

# For loop
echo "For loop example:"
for i in {1..5}
do
    echo "Iteration $i"
done

# While loop
echo "While loop example:"
count=1
while [ $count -le 5 ]
do
    echo "Iteration $count"
    # count=$((count + 1))
    ((count++))
done

# Until loop
echo "Until loop example:"
count=1
until [ $count -gt 5 ]
do
    echo "Iteration $count"
    count=$((count + 1))
done