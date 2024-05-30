# CTF-Bash-Functions
Here are some functions for bash for CTFS
This is a collection of bash/zsh functions that I made for keeping organized during CTFs.

There are a few commands:

mkcd(), is just used for my basic needs on creating directories it makes the folder of the first argument and cd's into it

mkchal(), does the same thing as mkcd pretty much but add "-chal" to it to make different challenges

(WARING CAN BE USED IN ANY DIRECTORY AND CHANGES THE NAME OF THE DIRECTORY)

finish(), used in a challenge directories used when completed with a challenge the check for a completed challenge is if flag.txt exists then changes the name of the directory to Directory name + 
"-Complete"

mktxt(), creates a txt file with the first argument being the content and the second argument being the title of the txt file

mkctf(), takes multiple arguments and creates a parent directory with the name of the CTF then creates multiple folders inside named with the most common CTF categories. Then creates a Txt file named "info" and adds arguments to it

if there are no arguments print the help statement

if there are any of these arguments then it will go into the respective category:
"-c" | Crypto
"-w" | Web
"-m" | Misc
"-o" | OSINT
"-f" | Forensics
"-r" | Reverse engineering

then the next argument regardless of whether a '-' argument was given will then be the name of the CTF all the rest of the arguments after that will be put in "info.txt"

example mkctf commands:
mkctf -w ctfname "website *website name here*" "Great CTF" "Cant wait" "date : *date*" 

aliases
back, goes to the parent directory
cl, clears the terminal


# Coming Soon!
A JSON parcer so I can store variables across different terminal sessions

I plan on it having multiple functions that work with the JSON file, one function that I plan to add is the ability to store the output of a command or a command in general to the JSON file then load that response into another terminal
