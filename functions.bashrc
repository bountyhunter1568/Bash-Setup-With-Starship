# Function to initialize a CTF (Capture The Flag) folder structure
ctf_init() {
    # Store the first argument passed to the function in the variable 'ctf_name'
    local ctf_name=$1
    
    # Create a directory structure for the CTF with subfolders for various challenge categories
    # The '-p' option ensures that parent directories are created as needed and no error is thrown if they already exist
    mkdir -p $ctf_name/{web,pwn,crypto,misc,forensics,reversing,writeups}
    
    # Print a confirmation message indicating the structure has been created under the specified CTF name
    echo "CTF structure created under '$ctf_name'!"
}

# Function to list challenges in a specific CTF category
list_challenges() {
    # Store the first argument passed to the function in the variable 'category'
    local category=$1
    
    # List the contents of the specified category directory in long format (detailed view)
    ls -l $category
}

# Function to create a new challenge in a specified category
create_challenge() {
    # Store the first argument passed to the function in the variable 'category'
    local category=$1
    
    # Store the second argument passed to the function in the variable 'challenge_name'
    local challenge_name=$2
    
    # Create the directory structure for the new challenge under the specified category
    # The '-p' option ensures that parent directories are created as needed
    mkdir -p $category/$challenge_name
    
    # Create an empty file named 'notes.txt' inside the challenge directory
    touch $category/$challenge_name/notes.txt
    
    # Print a confirmation message indicating the challenge has been created
    echo "Challenge '$challenge_name' created under '$category'!"
}

# Function to change the current directory to a specified CTF category
goto_category() {
    # Store the first argument passed to the function in the variable 'category'
    local category=$1
    
    # Attempt to change the directory to the specified category
    # If the 'cd' command fails (i.e., the category does not exist), output an error message
    cd $category || echo "Category '$category' does not exist!"
}

# Function to save a write-up for a specific challenge in a given category
save_writeup() {
    # Store the first argument passed to the function in the variable 'category'
    local category=$1
    
    # Store the second argument passed to the function in the variable 'challenge_name'
    local challenge_name=$2
    
    # Store the third argument passed to the function in the variable 'writeup_file'
    local writeup_file=$3
    
    # Copy the provided write-up file to the specified challenge directory under the category
    # and rename it as 'writeup.txt'
    cp $writeup_file $category/$challenge_name/writeup.txt
    
    # Print a confirmation message indicating the write-up has been saved
    echo "Write-up saved for '$challenge_name' in category '$category'!"
}

# Function to mark a challenge as finished by renaming its directory if 'flag.txt' is found
finish_challenge() {
    # Store the first argument passed to the function in the variable 'category'
    local category=$1
    
    # Store the second argument passed to the function in the variable 'challenge_name'
    local challenge_name=$2
    
    # Construct the full path to the challenge directory by combining the category and challenge name
    local challenge_dir="$category/$challenge_name"
    
    # Check if the file 'flag.txt' exists in the challenge directory
    if [[ -f "$challenge_dir/flag.txt" ]]; then
        # If 'flag.txt' exists, rename the challenge directory to indicate it is done
        mv "$challenge_dir" "${challenge_dir}-done"
        
        # Print a confirmation message indicating the challenge is marked as done
        echo "Challenge '$challenge_name' marked as done!"
    else
        # If 'flag.txt' is not found, print an error message
        echo "No 'flag.txt' found in '$challenge_name'. Challenge not marked as done."
    fi
}
