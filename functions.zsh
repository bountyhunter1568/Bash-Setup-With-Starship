# Takes in a parameter of the name of the directory you want to create
# Creates the Directory then navigates to it 
function mkcd(){ mkdir "$1"; cd "$1"; }

# For Ctf organization

# Takes in a parameter of the name of the directory you want to create and adds "-chal" to it
# Creates the Directory then navigates to it
function mkchal(){ mkdir "$1-Chal"; cd "$1-Chal"; }

# Checks if "flag.txt" exists in the directory
# Then changes the name of the directory you are in to Directory name + "-Complete"
# Else Prints a message saying to complete the challenge 
function finish(){ 
	if [[ -e "flag.txt" ]]; then
		mv "$(dirname $(readlink -f $0))" "$(dirname $(readlink -f $0))-Complete";
		cd "..";
	else
		echo "YOUR NOT DONE. Add a txt file named \"flag\" to make this command work";
	fi
}

# Takes in 2 parameters and creates a .txt file in the current Directory
# Parameter 1: text inside of the .txt file
# Parameter 2: name of the file WITHOUT .txt
function mktxt(){
	echo "$1" > "$2.txt";
}

# Goes to parent Directory
alias back='cd ".."'
# Clears terminal
alias cl='clear'

# Makes A directory of the first arg
# Then puts you in the directory
# IF there are more args 
# THEN it creates a txt file with all of the args separated by a new line
function mkctf {
	# IF Args = null
	if [ -z "$1" ]; then
		# Display help if no args
		echo "Usage: mkctf <CTF Name> <Info to put in Info.txt>..."
		echo "       mkctf <CTF Name>"
		echo "       mkctf < -c go to Crypto, -w go to Web, -m go to Misc, -o go to OSINT, -f go to Forensics, -r go to Reverse engineering >"
		return 1
	else	
		ogcd=""
		idex=0
		
		if [ "$1" == "-c" ]; then
			# Just makes the directory
			mkdir "$2CTF"
			cd "$2CTF"
			ogcd="Crypto"
			mkdir "Crypto"
			mkdir "Web"
			mkdir "Misc"
			mkdir "OSINT"
			mkdir "Forensics"
			mkdir "Reverse_engineering"
			let "idex += 1"
		fi
		if [ "$1" == "-w" ]; then
			# Just makes the directory
			mkdir "$2CTF"
			cd "$2CTF"
			ogcd="Web"
			mkdir "Crypto"
			mkdir "Web"
			mkdir "Misc"
			mkdir "OSINT"
			mkdir "Forensics"
			mkdir "Reverse_engineering"
			let "idex += 1"
		fi
		if [ "$1" == "-m" ]; then
			# Just makes the directory
			mkdir "$2CTF"
			cd "$2CTF"
			ogcd="Misc"
			mkdir "Crypto"
			mkdir "Web"
			mkdir "Misc"
			mkdir "OSINT"
			mkdir "Forensics"
			mkdir "Reverse_engineering"
			let "idex += 1"
		fi
		if [ "$1" == "-o" ]; then
			# Just makes the directory
			mkdir "$2CTF"
			cd "$2CTF"
			ogcd="OSINT"
			mkdir "Crypto"
			mkdir "Web"
			mkdir "Misc"
			mkdir "OSINT"
			mkdir "Forensics"
			mkdir "Reverse_engineering"
			let "idex += 1"
		fi
		if [ "$1" == "-f" ]; then
			# Just makes the directory
			mkdir "$2CTF"
			cd "$2CTF"
			ogcd="Forensics"
			mkdir "Crypto"
			mkdir "Web"
			mkdir "Misc"
			mkdir "OSINT"
			mkdir "Forensics"
			mkdir "Reverse_engineering"
			let "idex += 1"
		fi
		if [ "$1" == "-r" ]; then
			# Just makes the directory
			mkdir "$2CTF"
			cd "$2CTF"
			ogcd="Reverse_engineering"
			mkdir "Crypto"
			mkdir "Web"
			mkdir "Misc"
			mkdir "OSINT"
			mkdir "Forensics"
			mkdir "Reverse_engineering"
			let "idex += 1"
		
		fi
			# IF Number of args >= 2
			if [ $# -ge 2 ]; then
				if [ $idex -lt 1 ]; then
					# Just makes the directory
					mkdir "$1CTF"
					cd "$1CTF"
					ogcd="$1CTF"
					mkdir "Crypto"
					mkdir "Web"
					mkdir "Misc"
					mkdir "OSINT"
					mkdir "Forensics"
					mkdir "Reverse_engineering"
				fi
				info=""
				loopi=0
				# Loop through Args to get all Args
				for n in $@
				do	
					let "loopi += 1"
					if [ $loopi == 1 ]; then
						continue
					fi
					if [[ $loopi == 2 && $idex == 1 ]]; then
						continue
					fi
					info+="$n"'\n'
				done
				echo "$info" > info.txt
				if [[ $idex -gt 0 ]]; then
					cd "$ogcd"
				fi
			fi
	fi
	echo "CTF Created with info in info.txt. \nThanks for using CTF Creator"
}
