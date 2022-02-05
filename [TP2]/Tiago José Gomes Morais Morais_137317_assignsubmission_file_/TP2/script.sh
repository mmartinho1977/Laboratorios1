#! /bin/sh

Init(){
    mkdir -p Videoteca
    mkdir -p Videoteca/Acao
    mkdir -p Videoteca/Comedia
    mkdir -p Videoteca/Drama
    mkdir -p Videoteca/Fantasia
    mkdir -p Videoteca/Horror
    mkdir -p Videoteca/Mystery
    mkdir -p Videoteca/Romance
    mkdir -p Videoteca/Thriller
    echo "$(tput setaf 1) Vidioteca initialized $(tput sgr 0) "
}

Compress(){
    tar -czvf Videoteca.tar.gz ./Videoteca
}

Decompress(){
    tar -xvf Videoteca.tar.gz
}


ListMovies(){
    for f in Videoteca/*; do
        if [ -d "$f" ] && [ "$f" != "~" ] && [ "$(ls -A $f)" ]  ; then
            echo "$(tput setaf 1)$f $(tput sgr 0) "
            for txt in "$f"/*; do
                s=${txt##*/}
                echo " - ${s%.*}"
            done
        fi
    done
}

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
    echo "insert the rating (0-10)"
    read movieRating

    

    #Check if movie category folder exists
    if [ -d "Videoteca/$movieCategory" ]; then
        echo ""
    else
    read -p "A categoria que introduziu não existe ($movieCategory), pretende adicionar (Yy|Nn)?" yn
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
    #Create movie file
    printf "Name: $movieName\n" >> "Videoteca/$movieCategory/$movieName".txt
    printf "Description: $movieDescription\n" >> "Videoteca/$movieCategory/$movieName".txt
    printf "Rating: $movieRating" >> "Videoteca/$movieCategory/$movieName".txt
    
}

while getopts ":alicd " option; do
    case $option in
        a|add) 
            AddMovie
            exit;;
        l) 
            ListMovies
            exit;;
        i)
            Init
            exit;;
        c)
            Compress
            exit;;
        d)
            Decompress
            exit;;
    esac
done
            

