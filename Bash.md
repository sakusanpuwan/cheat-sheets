Bash is a UNIX shell and command language

In the realm of Bash commands, we typically encounter three components:
- Command
- Optional flags.
- Arguments.

| Command                                              | Example                                                                           | Description                                                                                                                                                  |
|------------------------------------------------------|-----------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `pwd`                                                | `pwd`                                                                             | Prints the current working directory.                                                                                                                        |
| `cd` or `cd ~`                                       | `cd`                                                                              | Changes to the home directory.                                                                                                                               |
| `cd <directory name>`                                | `cd Documents/`                                                                   | Changes to a specific directory.                                                                                                                             |
| `cd ..`                                              | `cd ..`                                                                           | Moves up one level to the parent directory.                                                                                                                  |
| `ls`                                                 | `ls`                                                                              | Lists the contents of the current directory.                                                                                                                 |
| `ls -a`                                              | `ls -a`                                                                           | Lists all contents of the current directory, including hidden files.                                                                                         |
| `touch <filename>`                                   | `touch myText.txt`                                                                | Updates the timestamp of the last modification of the file. Creates the file if it doesn’t already exist.                                                    |
| `nano <filename>`                                    | `nano myText.txt`                                                                 | Opens the Nano text editor to edit the specified file.                                                                                                       |
| `echo <String>`                                      | `echo hello`                                                                      | Prints the provided text to the console.                                                                                                                     |
| `echo <String> > <filename>`                         | `echo "Hello world" > myTextFile.txt`  <br/> `echo "my friend" >> myTextFile.txt` | Writes the provided text to the specified file. >> Appends to end of the file                                                                                |
| `mkdir <directory name>`                             | `mkdir myNewFolder`                                                               | Creates a new directory with a specified name.                                                                                                               |
| `cat <filenames...>`                                 | `cat myText.txt`                                                                  | Concatenates the content of multiple files and prints the result to the terminal. Often used with one file just to display its content.                      |
| `mv <file> <location>`                               | `mv myText.txt myNewFolder/`<br/> `mv myText.txt ../myNewFolder`                  | Moves files and folders from one location to another. The first argument is the item you want to move, and the second argument is the destination directory. |
| `mv <file> <filename>`                               | `mv myText.txt text2.txt/`                                                        | Renames file name                                                                                                                                            |
| `cp <file> <filename>`                               | `cp myText.txt text2.txt/`                                                        | Copies and creates a duplicate file with new name                                                                                                            |
| `rm <filename>`                                      | `rm myText.txt`                                                                   | Deletes a file permanently.                                                                                                                                  |
| `rm -d <directory name>` or `rmdir <directory name>` | `rmdir myNewFolder`                                                               | Removes an empty directory.                                                                                                                                  |
| `rm -rf <directory name>`                            | `rm -rf myNewFolder`                                                              | Deletes a directory and its contents recursively. The -r flag indicates recursive deletion, and the -f flag forces the removal.                              |
| `ls -<flag>`                                         | `ls -R`                                                                           | Executes the command `ls -R` to list files and directories recursively.                                                                                      |
| `clear`                                              | `clear`                                                                           | Clears the terminal window.                                                                                                                                  |
| `variable=value`                                     | `my_path=/home`                                                                   | Defines a variable my_path to the value /home                                                                                                                |

## Shortcuts
`Ctrl + Insert` -> copy
`Shift + Insert` -> paste 

## Editing usin Vi (text editor)
```
vi text.txt
i
esc
:
w -> write
q -> quit
```

## Midnight Commander (file manager)
`sudo apt install mc
mc`

## Manual
`man` - manual provides help with Linux commands
`man -k "term"` - searches manual for term