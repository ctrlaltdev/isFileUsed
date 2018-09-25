[![Bash](https://img.shields.io/github/license/ctrlaltdev/isFileUsed.svg?style=for-the-badge)](https:github.com/ctrlaltdev/isFileUsed/blob/master/LICENCE.md)
![Bash](https://img.shields.io/badge/_-SH-4EAA25.svg?style=for-the-badge)

Will check if a file is used by others given a specific scope

## Installation

```bash
$ cd isFileUsed/
$ ./install.sh
```

## Usage

```bash
$ isFileUsed [ ( -f ) path/to/file || -d path/to/dir] [ -d path/to/dir ]
```

### To look up one file, with the current dir as the scope:

```bash
$ isFileUsed path/to/file
```

or

```bash
$ isFileUsed -f path/to/file
```

### To look up every file in a directory, with the current dir as the scope:

```bash
$ isFileUsed -d path/to/dir/
```

### To define the scope as a more specific dir:

```bash
$ isFileUsed -f path/to/file -s path/to/dir/
```
