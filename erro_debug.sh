#!/bin/bash

DEBUG=true

debug() {
	if [ "$DEBUG" = true ]; then
		echo "DEBUG: $1"
	fi
}
dir_name="sampleDir"

if ! mkdir -p "$dir_name" 2>/dev/null; then
	echo "Error: Unable to create directory $dir_name. Check Permissions."
	exit 1
else
	debug "Directory $dir_name created or already exists."
fi

if ! cd "$dir_name" 2>dev/null; then
	echo "Error: Unable to change to directory $dir_name. Check permissions."
	exit 1
else
	debug "Changed to directory $dir_name."
fi

for i in {1...10}; do
	file_name="File${i}.txt"
	if ! echo "$file_name" > "$file_name" 2>dev/null; then
		echo "Error: Unable to create file $file_name. Check permissions."
		exit 1
	else
		debug "Created file $file_name with its name as content."
	fi
done

echo "Created $dir_name with files File1.txt to File10.txt."

