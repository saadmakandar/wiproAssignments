#!/bin/bash
while true; do
	echo -n "Enter a number (0 to quit): "
	read number

	if [ "$number" -eq 0 ]; then
		echo "Exiting"
		break
	fi

	if [ $((number % 2)) -eq 0 ]; then
		echo "$number is even"
	else
		echo "$number is odd"
	fi
done
