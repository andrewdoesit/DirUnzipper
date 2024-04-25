#!/bin/bash

# This script will unzip all .zip files in the current directory

if [ -d "$1" ]; then

    # Unzip all .zip files in the current directory
    for file in "$1"/*.zip; do
        if [ -f "$file" ]; then
            #Extract the .zip file to the same directory
            output_dir=$(dirname "$file")
            if ! unzip "$file" -d "$output_dir" 2>/dev/null; then
                echo "Failed to unzip $file"
            fi

        fi
    done
else
    echo "$1 is not a directory"
fi

         
