# Bash setup with starship

## .bashrc
Mostly taken from ChrisTitusTech: https://github.com/ChrisTitusTech/mybash/tree/main. With some of my stuff sprinkled in.
You can either copy and paste the whole bashrc file or just copy and paste the functions you need

## starship.toml
---
Also mostly taken from ChrisTitusTech, the directories I have set will be blurred out with "$$$$$$$$$"
---
Here are some functions for bash for CTFS
This is a collection of bash/zsh functions that I made for keeping organized during CTFs.

Here are a few commands:

## mkcd()
This is just used for my basic needs on creating directories it makes the folder of the first argument and cd's into it

## mkchal()
Does the same thing as mkcd pretty much but add "-chal" to it to make different challenges

> [!WARNING]
> **WARNING CAN BE USED IN ANY DIRECTORY AND CHANGES THE NAME OF THE DIRECTORY**

## finish()
Used in a challenge or "-chal" directories used when completed with a challenge the check for a completed challenge is if flag.txt exists then changes the name of the directory to Directory name + "-Complete"

## mktxt()
Creates a txt file with the first argument being the content and the second argument being the title of the txt file

## mkctf() (definitely a complicated command and I want to make it better)
Takes multiple arguments and creates a parent directory with the name of the CTF then creates multiple folders inside named with the most common CTF categories. Then creates a Txt file named "info" and adds arguments to it

If there are no arguments print the help statement

If there are any of these arguments then it will go into the respective category:
"-c" | Crypto
"-w" | Web
"-m" | Misc
"-o" | OSINT
"-f" | Forensics
"-r" | Reverse engineering

Then the next argument regardless of whether a '-' argument was given will then be the name of the CTF all the rest of the arguments after that will be put in "info.txt"

### Example mkctf commands:
mkctf -w ctfname "website *website name here*" "Great CTF" "Cant wait" "date : *date*" 

## Aliases
back, goes to the parent directory
cl, clears the terminal


# Coming Soon!
A JSON parcer so I can store variables across different terminal sessions

I plan on it having multiple functions that work with the JSON file, one function that I plan to add is the ability to store the output of a command or a command in general to the JSON file then load that response into another terminal
