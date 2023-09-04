#!/bin/bash

# Text Search Tool

# Prompt the user for the search pattern
read -p "Enter the text pattern to search: " pattern

# Prompt the user for the directory to search in
read -p "Ennter the directory to search in: " search_dir

# Check if the directory exists
if [ ! -d "$search_dir" ]; then
	echo "Directory '$search_dir' does not exist."
	exit 1
fi

# Perform the text search using grep
echo "Search results for '$pattern' in directory '$search_dir':"
grep -rn "$pattern" "$search_dir" | while read -r result; do
	# Parse the grep output to extract filename and line numbers
	filename=$(echo "$result" | cut -d ':' -f 1)
	line_number=$(echo "$result" | cut -d ':' -f 2)
	matched_text=$(echo "$result" | cut -d ':' -f 3-)

	echo "File: $filename, Line: $line_number"
	echo "Matched Text: $matched_text"
	echo "---------------------"
done

echo "Search complete."
