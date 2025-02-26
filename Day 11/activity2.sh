#!/bin/bash

PREFIX="new_"
SUFFIX="_old"

for file in *; do
    if [ -f "$file" ]; then
        mv "$file" "${PREFIX}${file}${SUFFIX}"
    fi
done
