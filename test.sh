#!/bin/bash

root_dir="$PWD"
file_name=output.txt

echo "Creating or opening file $file_name ..."
touch "$root_dir/$file_name"

if [ $? -ne 0 ]; then
    echo "Error creating or opening file $file_name"
    exit
fi

for dir in "$1"/*; do
    if [ -f "$dir" ]; then
        continue
    fi
    echo "Processing directory: $dir"
    cd "$dir" || continue
    echo "Running npm install under $dir ..."

    # Adding the directory name and some new lines to the file
    echo -e "\n\nDirectory: $dir\n" >>"$root_dir/$file_name"
    npm install >>"$root_dir/$file_name" 2>&1

    echo "Returning to the root directory ..."
    cd "$root_dir" || exit
done
