#########################################################
# University: IPCA                                      #
# Course: LESI                                          #
# Author: Ricardo Duarte n16424                         #
#########################################################

#!/bin/bash

### Variables ###

# variable that holds path to videotec
directories_path=/home/${USER}/Documents/videotec
# get current directorie path (where this script is executed from)
current_dir=$(command pwd)
# variable that holds path to videotec/raw
raw_data_set_dir=$directories_path/raw
# variable that contains url to github json file
datasets_url=https://raw.githubusercontent.com/vega/vega/master/docs/data/movies.json
# variable that holds file name
output_file=raw_movie_dataset.json
#declare an empty array, alternative would be genre_array_raw=()
declare -a genre_array_raw


### Variables ###

### FUNCTIONS ###

# Function that validates the needed dependencies
function validate_dependencies {

# if sed -v  does throws command not found then
if ! command -v sed -v &> /dev/null
then
    # print a cross
    /usr/bin/printf "sed dependency: \u274c\n"
    exit
else
    # print a check mark
    /usr/bin/printf "sed dependency: \u2714\n"
fi
# if curl -v  does throws command not found then
if ! command -v curl -v &> /dev/null
then
    /usr/bin/printf "curl dependency: \u274c\n"
    exit
else
    /usr/bin/printf "curl dependency: \u2714\n"
fi
# if jq -v  does throws command not found then
if ! command -v jq -v &> /dev/null
then
    /usr/bin/printf "jq dependency: \u274c\n"
    exit
else 
    /usr/bin/printf "jq dependency: \u2714\n"
fi

}

# function that valides if a raw_data_set_dir exists
function validate_directories {
    # Validate if raw_data_set_dir exists
    if [ -d "$raw_data_set_dir" ]; then
        # print message
        echo "Video directory already exists"
    else

        echo "Directory does not exist yet, creating it..."
        # create folder ~/Documents/videotec/raw
        mkdir -p $raw_data_set_dir
    fi
}

# function that gets json from the url
function get_data_set {
    # go to directory  ~/Documents/videotec/raw
    pushd $raw_data_set_dir
    # validate if ~/Documents/videotec/raw/raw_movie_dataset.json exists
    if [[ ! -f "$output_file" ]]; then
        # if not get it with curl
        command curl $datasets_url -o $output_file
    else
        # else print message
        echo "$output_file already exists in $raw_data_set_dir"
    fi
    # go back to execution directory
    pushd $current_dir
}

# function that generates subfolders in ~/Documents/videotec/ according to the dataset genres
function generate_genre_subdirs {
    # go to directory  ~/Documents/videotec/
    pushd $directories_path
    # command to fill array with the output of jq -c -r '.[]."Major Genre"' $raw_data_set_dir/$output_file
    # jq is bash a tool to parse json -c means color -r means raw '.[]."Major Genre"' tells the parser to parse any array elemtent with the key = "Major Genre"
    readarray -t genre_array_raw < <(jq -c -r '.[]."Major Genre"' $raw_data_set_dir/$output_file)
    #iterate through the array
    for i in "${genre_array_raw[@]}"; 
    do
        # create a string using the string contained in i and replace any non alpha-numeric with an '_'
        new_str=${i//[!0-9a-zA-Z.-]/_}
        # validate if there is any folder with the genre name already 
        if [ ! -d "$new_str" ]; then
            echo "creating directory with path $pwd/$new_str"
            # if not create it
            mkdir $new_str
        else 
            # else print already exists
            echo "$new_str already exists"
        fi
    done
    # execute $ tree to see the folders and subfolders in a tree like structure
    command tree
    # go back to execution directory
    pushd $current_dir
}

function split_raw_json {
    # go to directory  ~/Documents/videotec/
    pushd $directories_path
    # parse object in the file and pipe it to a while
    jq -c -r '.[]' $raw_data_set_dir/$output_file | while read i; do
        # parse the title from the iterated object
        file_name=$(jq -r '.Title' <<< "$i")
        # replace any non alphanumeric in the name by a '_'
        better_name=${file_name//[!0-9a-zA-Z.-]/_}
        echo "*************************************************"
        echo "Creating $better_name"
        # output the object into a file with title_name.json
        echo $i > $better_name.json
        echo "*************************************************"
        # clear variables
        unset file_name
        unset better_name
    done
    # go back to execution directory
    pushd $current_dir
}

# Function that moves created json files to respective genre folder
function move_json_files_to_folders {
    # go to directory  ~/Documents/videotec/
    pushd $directories_path
    # loop through every .json file
    for FILE in *.json; do
        #parse the the genre from the iterated file 
        file_genre=$(jq -r '."Major Genre"' $FILE)
        # create a string using the string contained in i and replace any non alpha-numeric with an '_'
        better_genre=${file_genre//[!0-9a-zA-Z.-]/_}
        echo $better_genre
        # validate if there is a folder with the genre name
        if [[ -d "$better_genre" ]]; then
            echo "Moving $FILE to $better_genre"
            # if subfolder exists move the file to there
            mv $FILE $better_genre
        else
            # if not print error message
            echo "Cannot move $FILE, because $better_genre is not a valid directory"
        fi
    done
    # go back to execution directory
    pushd $current_dir
}

# Function that compresses videotec
function compress_videotec {
    # goes to ~/Documents
    pushd /home/${USER}/Documents
    # validates if ~/Documents/videotec exists
    if [ -d "$directories_path" ]; then
        echo "Compressing videoteco into $pwd/videotec.zip"
        # if so calls command zip <compressed_file_name> -r (means recursively) <file/folder_to_zip> 
        command zip videotec.zip -r videotec/
    else
        # if not print message
        echo "Videotec folder doesn't exist at: $directories_path"
    fi
    # go back to execution directory
    pushd $current_dir
}

# Function that decompresses videotec
function decompress_videotec {
    # goes to ~/Documents
    pushd /home/${USER}/Documents
    # validates if ~/Documents/videotec.zip exists
    if [[ ! -f "${pwd}/videotec.zip" ]]; then
        # if it does unzip it in .
        command unzip videotec.zip
    else
        # if not print message
        echo "No such file ${pwd}/directories_path"
    fi
    # go back to execution directory
    pushd $current_dir 
}

# Function to delete videotec
function rm_videotec {
    # goes to ~/Documents
    pushd /home/${USER}/Documents
    # validates if ~/Documents/videotec exists
    if [ -d "$directories_path" ]; then
        echo "Deleting: $directories_path"
        # if it does remove it with recursive and force
        command rm -rf $directories_path
    else
        # if not print message
        echo "No such file $directories_path"
    fi
    # go back to execution directory
    pushd $current_dir
}

# function that executes functions above
function execute {
    # execute validate_dependencies && stands for execute the next command if previous succeed
    validate_dependencies &&\
    # execute validate_directories
    validate_directories &&\
    # execute get_data_set
    get_data_set &&\
    # execute generate_genre_subdirs
    generate_genre_subdirs &&\
    # execute split_raw_json
    split_raw_json &&\
    # execute move_json_files_to_folders
    move_json_files_to_folders
}

# function that prints an help menu
function print_help_menu {
    echo "#########################################################"
    echo "#                                                       #"
    echo "# Valid flags                                           #"
    echo "# -a : prints about information                         #"
    echo "# -c : compresses videotec to ~/Documents/videotec.zip  #"
    echo "# -d : decompresses videotec into ~/Documents/videotec  #"
    echo "# -e : executes script normally                         #"
    echo "# -h : show help menu                                   #"
    echo "# -r : removes videotec folder and subfolders           #"
    echo "#                                                       #"
    echo "#########################################################"
}

# function that prints and about menu
function print_about_info {
    echo "********************** Videotec manager **********************"
    echo "****** Simple script to automate json data manipulation ******"
    echo "******************** of a movie data set *********************"
    echo "*************** Author: Ricardo Duarte n16424 ****************"
    echo "*********************** Course: LESI *************************"                                       
}

### FUNCTIONS ###

### EXECUTION ###
    # if argument number is the 1st one this means ./script_to_execute.sh arg1
    if [[ "$#" -eq 1 ]]; then
        # switch case through the options
        case "$1" in
            # if it is '-a' execute print_about_info
            -a) print_about_info; exit 0;;
            # if it is '-c' execute compress_videotec
            -c) compress_videotec; exit 0;;
            # if it is '-d' execute decompress_videotec
            -d) decompress_videotec; exit 0;;
            # if it is '-e' execute execute
            -e) execute; exit 0;;
            # if it is '-h' execute print_help_menu
            -h) print_help_menu; exit 0;;
            # if it is '-r' execute rm_videotec
            -r) rm_videotec; exit 0;; 
            # if it is anything else print message
            -*) echo "Please choose a valid flag, use -h flag to get help"; exit 1;;
        esac
    else
        # if no argument is passed print message
        echo "Please choose a valid flag, use -h flag to get help"; exit 1;
    fi

### EXECUTION ###
