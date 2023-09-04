#!/bin/bash

# Process Management Tool

while true; do
	echo "Process Management Menu:"
	echo "1. List running processes"
	echo "2. Search for processes by name or PID"
	echo "3. Terminate a process by PID"
	echo "4. Exit"

	read -p "Enter your choice: " choice

	case $choice in
		1)
			# List running processes
			ps aux
			;;
		2)
			# Search for processes by name or PID
			read -p "Enter the process name or PID to seach: " search_term
			ps aux | grep "$search_term"
			;;
		3)
			# Terminate a process by PID
			read -p "Enter the PID of the process to terminate: " pid_to_kill
			kill "$pid_to_kill"
			echo "Process with PID $pid_to_kill terminated."
			;;
		4)
			# Exit the script
			echo "Goodbye!"
			exit 0
			;;
		*)
			echo "Invalid choice. Please select a valid option."
			;;
	esac
done
