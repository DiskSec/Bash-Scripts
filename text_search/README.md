# Text Search Tool

This Bash script is a simple text search tool that allows you to search for a specific text pattern within a directory of files. It uses the `grep` command to perform the text search and displays the filename and line numbers where the pattern is found.

## Usage

1. Clone this repository to your local machine.
2. Make the script executable: `chmod +x text_search.sh`
3. Run the script: `./text_search.sh`

## Features

- **Search Pattern**: Enter the text pattern you want to search for when prompted.
- **Directory**: Specify the directory in which you want to search when prompted.
- **Results**: The script will display search results, including the filename, line numbers, and matched text for each occurrence found.

## Example

Suppose you want to search for the word "example" in all text files within the `~/documents` directory. You would run the script, enter "example" as the search pattern, and specify the directory as `~/documents`. The script will then display the search results.

```bash
$ ./text_search.sh
Enter the text pattern to search: example
Enter the directory to search in: ~/documents
Search results for 'example' in directory '~/documents':
File: ~/documents/file1.txt, Line: 10
Matched Text: This is an example of text.
--------------------
File: ~/documents/file2.txt, Line: 5
Matched Text: Another example is here.
--------------------
Search complete.
