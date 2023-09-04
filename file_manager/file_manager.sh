#!/bin/bash

# File management Script

while true; do
	echo "File Management Menu:"
	echo "1. List files in the current directory"
	echo "2. Create a directory"
	echo "3. Copy a file"
	echo "4. Move/Rename a file"
	echo "5. Delete a file or directory"
	echo "6. Exit"

	read -p "Enter your choice: " choice

	case $choice in
		1)
			# List files in the current directory
			ls
			;;
		2)
			# Create a directory
			read -p "Enter the directory name: " dirname
			mkdir "$dirname"
			echo "Directory '$dirname' created."
			;;
		3)
			# Copy a file
			read -p "Enter the source file: " sourcefile
			read -p "Enter the destination file or directory: " dest
			cp "$sourcefile" "$dest"
			echo "File '$sourcefile' copied to '$dest'."
			;;
		4)
			# Move/Rename a file
			read -p "Enter the source file: " sourcefile
			read -p "Enter the destination file or directory: " dest
			mv "$sourcefile" "$dest"
			echo "File '$sourcefile' moved/renamed to '$dest'."
			;;
		5)
			# Delete a file or directory
			read -p "Enter the file or directory to delete: " target
			rm -r "$target"
			echo "'$target' deleted."
			;;
		6)
			# Exit the script
			echo "Goodbye!"
			exit 0
			;;
		*)
			echo "Invalid choice. Please select a valid option."
	esac

done

