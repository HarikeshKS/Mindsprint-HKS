#!/bin/sh

echo "Enter a word (one, two, or three):"
read word

case $word in
    one)
        echo "You entered one."
        ;;
    two)
        echo "You entered two."
        ;;
    three)
        echo "You entered three."
        ;;
    *)
        echo "Invalid word."
        ;;
esac