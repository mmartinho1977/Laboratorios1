#!/bin/bash
###function to print help info
Help(){
##help information
echo "You have to use: [-l], [-h], [-d] and [-c]"
echo "   -l,           list folder structure and content of files inside the videoteca"
echo "   -h,           prints help information"
echo "   -d,           deletes videoteca"
echo "   -c,           creates videoteca"

}

List()
{
	echo "FOLDER STRUCTURE:"
	##show folder structure of videoteca
	tree $HOME/Videoteca/
	echo ""
	echo "CONTENTS OF FILES:"
	##command to find all files with .txt extension and execute a cat for each one
	find $HOME/Videoteca/ -type f -not -name .txt -printf "\n%p\n" -exec cat {} \;
	echo ""
}

Delete(){
##removes all files/folders 
rm -rf $HOME/Videoteca/
}

Make() {
##make parent directories
mkdir -p $HOME/Videoteca/Filmes
mkdir $HOME/Videoteca/Series

##store in variables for ease of use
filmes=$HOME/Videoteca/Filmes
series=$HOME/Videoteca/Series

##create folders for movies and tv shows
mkdir $filmes/Venom_2
mkdir $filmes/Dune
mkdir $series/Arcane 

##used printf so it is able to print on separate lines
printf "Very\nCool\n" > $filmes/Dune/Resumo.txt
printf "Jason Mamoa\nZendaya\n" > $filmes/Dune/Atores.txt
echo "Ação" > $filmes/Dune/Tipo.txt
printf "Release date October 21, 2021 (Portugal)" > $filmes/Dune/Detalhes.txt
printf "Runtime 2 hours 35 minutes" > $filmes/Dune/Especificacoes_Tecnicas.txt

printf "Very\nNice\n" > $filmes/Venom_2/Resumo.txt
printf "Tom Hardy\n" > $filmes/Venom_2/Atores.txt
echo "Ação" > $filmes/Venom_2/Tipo.txt
printf "Release date September 23, 2021 (Portugal)" > $filmes/Venom_2/Detalhes.txt
printf "Runtime 1 hours 35 minutes" > $filmes/Venom_2/Especificacoes_Tecnicas.txt

printf "Amazing\n" > $series/Arcane/Resumo.txt
printf "Hailee Steinfeld\n" > $series/Arcane/Atores.txt
echo "Ação" > $series/Arcane/Tipo.txt
printf "Release date November 6, 2021 (US)" > $series/Arcane/Detalhes.txt
printf "Runtime 41 minutes" > $series/Arcane/Especificacoes_Tecnicas.txt


}

##if cycle of the main function, checks if an argument was passed, if not prints help, if it was invokes the function accordingly
if [[ ! $@ =~ ^\-.+ ]]
then
  Help
else
while getopts "clhd" option; do
case ${option} in
c ) #For option c
Make
;;
l ) #For option l
List
;;
d ) #For option d
Delete
;;
h ) #For option h
Help
;;
\? ) #For invalid option
Help
;;
esac
done
fi
