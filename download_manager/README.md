# Download Manager

This Bash script serves as a simple Download Manager that allows users to download files from the internet using the `wget` command. Users can specify a list of URLs to download, and the script displays progress and completion status for each download.

## Usage

1. Clone this repository to your local machine.
2. Make the script executable: `chmod +x download_manager.sh`
3. Run the script: `./download_manager.sh`

## Features

- **Download Files**: Choose option 1 to download a file from a specified URL. The script will prompt you to enter the URL, and it will display the progress of the download until completion.

- **Exit the Script**: Choose option 2 to exit the script.

## Example

Suppose you want to download a file from a specific URL, e.g., `https://example.com/file.zip`. You would run the script, select option 1, and enter the URL when prompted. The script will download the file, displaying the download progress, and notify you when the download is complete.

```bash
$ ./download_manager.sh
Enter your choice: 1
Enter the URL of the file to download: https://example.com/file.zip
Downloading: file.zip
Progress: 25%
...
Progress: 100%
Download of file.zip completed.
