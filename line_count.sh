#!/bin/bash

count_lines() {
	local filename=$1

	if [ -e "$filename" ]; then
		local line_count=$(wc -l < "$filename")
		echo "The file '$filename' has $line_count lines."
	else
		echo "The file '$filename' does not exists."
	fi
}

count_lines "s1.txt"
count_lines "s2.txt"
count_lines "s3.txt"

