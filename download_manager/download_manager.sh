#!/bin/bash

# Download Manager

# Function to download a file from a URL
download_file() {
	local url="$1"
	local filename="$(basename "$url")"

	echo "Downloading: $filename"
	wget --progress=bar:force "$url" 2>&1 | while read -r line; do
		if [[ $line == *"% "* ]]; then
			progress=$(echo "$line" | grep -o -P '\d+(?=%)')
			echo -ne "Progress: $progress%\r"
		fi
	done

	echo -e "\nDownload of $filename completed."
}

while true; do
	echo "Download Manager Menu:"
	echo "1. Download a file"
	echo "2. Exit"

	read -p "Enter your choice: " choice

	case $choice in
		1)
			# Download a file
			read -p "Enter the URL of the file to download: " url
			download_file "$url"
			;;
		2)
			# Exit the script
			echo "Goodbye!"
			exit 0
			;;
		*)
			echo "Invalid choice. Please select a valid option."
			;;
	esac
done
