# Backup Script

This Bash script is a backup tool that allows you to create compressed tarball backups of specified directories. Users can create backups, list existing backup archives, restore backups, and manage their backup files.

## Usage

1. Clone this repository to your local machine.
2. Make the script executable: `chmod +x backup_script.sh`
3. Run the script: `./backup_script.sh`

## Features

- **Create a Backup**: Choose option 1 to create a backup of a specified directory. The backup will be stored in the designated backup directory with a timestamped filename.

- **List Backup Archives**: Choose option 2 to list existing backup archives in the backup directory.

- **Restore a Backup**: Choose option 3 to restore a backup. Enter the filename of the backup you want to restore, and the script will restore the contents to the original location.

## Backup Directory

By default, the backup directory is set to `/path/to/backup/directory`. You can customize this directory by modifying the `backup_dir` variable in the script.

## Example

Suppose you want to create a backup of your documents directory (`/home/user/documents`). You would run the script, select option 1, and enter `/home/user/documents` as the directory to back up. The script will create a compressed tarball backup in the designated backup directory.

```bash
$ ./backup_script.sh
Enter your choice: 1
Enter the directory to backup: /home/user/documents
Backup created: documents_20230904123456.tar.gz
