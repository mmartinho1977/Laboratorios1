#! /bin/sh

# Creates the base directories for the library
Init(){
    mkdir -p Videoteca
    mkdir -p Videoteca/Action
    mkdir -p Videoteca/Comedy
    mkdir -p Videoteca/Drama
    mkdir -p Videoteca/Fantasy
    mkdir -p Videoteca/Horror
    mkdir -p Videoteca/Mystery
    mkdir -p Videoteca/Romance
    mkdir -p Videoteca/Thriller
    echo "$(tput setaf 1) Vidioteca initialized $(tput sgr 0)"		# changes the color of the text in the terminal
}

## 	NOTES FOR TAR COMMAND ##
# -c	Create a new archive.				We use this flag whenever we need to create a new archive.
# -z	Use gzip compression.				When we specify this flag, it means that archive will be created using gzip compression.
# -v	Provide verbose output.				Providing the -v flag shows details of the files compressed.
# -f	Archive file name.					Archive file names are mapped using the -f flag.
# -x	Extract from a compressed file.		We use this flag when files need to be extracted from an archive.

# Crompress all the directory 
Compress(){
    tar -czvf Videoteca.tar.gz ./Videoteca
}

# Decrompress the directory 
Decompress(){
    tar -xvf Videoteca.tar.gz
}

# List all the movies inside each directory (that has at least one movie)
ListMovies(){
    for f in Videoteca/*; do 							# for each Category in Videoteca ...
        if [ -d "$f" ] && [ "$f" != "~" ] && [ "$(ls -A $f)" ]  ; then 	# if exists (-d) and it's different than empty
            echo "$(tput setaf 1)$f $(tput sgr 0) "  			# changes the color of the text in the terminal
            for txt in "$f"/*; do						##
                s=${txt##*/}							##
                echo " - ${s%.*}"						## shows only the name and not the extension
            done
        fi
    done
}

# Inserts a movie in the desired category, needs the movie title, description and rating (If the category doesn't exist it can create it directy from here)
AddMovie(){
    echo "Insert the name of the movie"
    read movieName
    echo "Insert the category"
    read movieCategory
    movieDescription=""
    echo "Insert the description. ctrl+D to save the description"
    for line in $(cat);
        do 
            movieDescription="${movieDescription}\n${line}"
    done
    echo "$movieDescription"
    echo "Insert the rating (0-10)"
    read movieRating

    
    # Check if movie category folder exists
    if [ -d "Videoteca/$movieCategory" ]; then
        echo ""
    else 
    read -p "The category you inserted does not exist ($movieCategory), do you wish to add it (Yy | Nn)?" yn
        echo $yn
        case $yn in
        [Yy]* ) 
            mkdir Videoteca/$movieCategory
            break;;
        [Nn]* ) 
            exit;;
        * ) 
            echo "Please answer yes or no.";;
    esac
    fi

    echo "$movieDescription"
    
    # Create movie file
    printf "Name: $movieName\n" >> "Videoteca/$movieCategory/$movieName".txt
    printf "Description: $movieDescription\n" >> "Videoteca/$movieCategory/$movieName".txt
    printf "Rating: $movieRating" >> "Videoteca/$movieCategory/$movieName".txt
    
}

# Sets the available optins of the script 
while getopts ":alicd " option; do
    case $option in
        a|add) 
            AddMovie
            exit;;
        l|list) 
            ListMovies
            exit;;
        i|init)
            Init
            exit;;
        c|comp)
            Compress
            exit;;
        d|decomp)
            Decompress
            exit;;
    esac
done