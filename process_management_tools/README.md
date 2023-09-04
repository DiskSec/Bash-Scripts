# Process Management Tool

This Bash script serves as a Process Management Tool, allowing users to interact with running processes on their system. With this tool, you can list running processes, search for processes by name or PID, and terminate processes as needed.

## Usage

1. Clone this repository to your local machine.
2. Make the script executable: `chmod +x process_management.sh`
3. Run the script: `./process_management.sh`

## Features

- **List Running Processes**: Choose option 1 to list all running processes, displaying details such as process ID (PID), CPU usage, and more.

- **Search for Processes**: Choose option 2 to search for processes by name, PID, or other criteria. The script uses the `ps` and `grep` commands to provide search results.

- **Terminate a Process**: Choose option 3 to terminate a process by specifying its PID. The script uses the `kill` command to gracefully terminate the selected process.

## Example

Suppose you want to list all running processes on your system. You would run the script and select option 1. The script will display a list of currently running processes.

```bash
$ ./process_management.sh
Enter your choice: 1
[Output: List of running processes]
