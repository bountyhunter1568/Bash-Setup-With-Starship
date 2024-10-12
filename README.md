# Bash setup with starship

## .bashrc
Mostly taken from ChrisTitusTech: https://github.com/ChrisTitusTech/mybash/tree/main. With some of my stuff sprinkled in.
You can either copy and paste the whole bashrc file or just copy and paste the functions you need

## starship.toml
Also mostly taken from ChrisTitusTech, the directories I have set will be blurred out with "$$$$$$$$$". If you want the font I used it the nerd font.

Font Name: MesloLGS Nerd Font Mono

Link: https://github.com/ryanoasis/nerd-fonts/releases/latest/

<br><br>
# CTF Commands

## ctf_init

The `ctf_init` function initializes a folder structure for a Capture The Flag (CTF) event. It creates directories for common challenge categories such as web, pwn, crypto, misc, forensics, reversing, and writeups.

### Usage

```bash
ctf_init <ctf_name>
```

## list_challenges

The `list_challenges` function is used to list all challenges within a specific Capture The Flag (CTF) category. It displays the contents of the specified category directory in a detailed, long format.

### Usage

```bash
list_challenges <category>
```

## create_challenge

The `create_challenge` function is used to create a new challenge directory in a specified CTF category. It also creates an empty `notes.txt` file within the challenge directory to store notes related to the challenge.

### Usage

```bash
create_challenge <category> <challenge_name>
```

## goto_category

The `goto_category` function is used to change the current working directory to a specified Capture The Flag (CTF) category. If the specified directory does not exist, an error message will be printed.

### Usage

```bash
goto_category <category>
```

## save_writeup

The `save_writeup` function is designed to save a write-up file for a specific challenge within a given category. It copies the provided write-up file to the specified challenge's directory and renames it as `writeup.txt`.

### Usage

```bash
save_writeup <category> <challenge_name> <writeup_file>
```


## finish_challenge

The `finish_challenge` function is designed to mark a challenge as finished by renaming its directory if a `flag.txt` file is found within it. This function can be useful in environments where challenges or tasks are organized in directories and a specific file (e.g., `flag.txt`) signifies the completion of a challenge.

### Usage

```bash
finish_challenge <category> <challenge_name>
```

## Aliases
back, goes to the parent directory
cl, clears the terminal
