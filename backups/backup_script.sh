#!/bin/bash

# Backup Script

# Directory to store backup archives
backup_dir="/path/to/backup/directory"

# Create the backup directory if it doesn't exist
mkdir -p "$backup_dir"

while true; do
    echo "Backup Menu:"
    echo "1. Create a backup"
    echo "2. List backup archives"
    echo "3. Restore a backup"
    echo "4. Exit"

    read -p "Enter your choice: " choice

    case $choice in
        1)
            # Create a backup
            read -p "Enter the directory to backup: " source_dir
            backup_filename="${source_dir//\//_}_$(date +'%Y%m%d%H%M%S').tar.gz"
            tar -czvf "$backup_dir/$backup_filename" "$source_dir"
            echo "Backup created: $backup_filename"
            ;;
        2)
            # List backup archives
            echo "Backup archives in $backup_dir:"
            ls -lh "$backup_dir"
            ;;
        3)
            # Restore a backup
            read -p "Enter the backup filename to restore: " restore_file
            tar -xzvf "$backup_dir/$restore_file" -C /
            echo "Backup restored."
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
