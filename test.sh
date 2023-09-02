#!/bin/bash

root_dir="$PWD"
file_name=output.txt

echo "Creating or opening file $file_name ..."
touch "$root_dir/$file_name"

if [ $? -ne 0 ]; then
    echo "Error creating or opening file $file_name"
    exit
fi

for dir in "$1"/*; do # Whitespace-safe and recursive
    if [ ! -d "$dir" ]; then
        echo "Skipping $dir because it is not a directory"
        continue
    fi

    echo "this is processing the directory"
    echo "Processing directory: $dir"

    cd "$dir" || continue
    echo "Running npm install under $dir ..."

    if [ ! -f "package.json" ]; then
        echo "No package.json file found, skipping ..."
        continue
    fi

    echo -e "\e[33m$dir\e[0m" >>"$root_dir/$file_name"
    npm install >>"$root_dir/$file_name" 2>&1

    echo "Returning to the root directory ..."
    cd "$root_dir" || exit
done
