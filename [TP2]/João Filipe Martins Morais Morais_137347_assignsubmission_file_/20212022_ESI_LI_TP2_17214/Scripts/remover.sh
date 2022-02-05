#!/bin/bash

clear
cd
cd Desktop/


dir="/home/jmorais/Desktop/Videoteca" #Caminho da pasta Videoteca.

if [ -d $dir ] #Verifica se a pasta Videoteca existe.
then

	cd
	cd Desktop/Videoteca/Filmes/"Data de lançamento"/
	
	rmdir 2021-12-16 2021-12-18 2021-12-19 2021-12-20 2021-12-21 2022-01-8 2022-01-9 2022-01-10 2022-01-11 2022-01-12 2022-01-13 #Remoção das pastas com o comando rmdir para a remoção de diretorias
	
	cd 2022-01-14/
	
	rm -r "Scream"/Info2.txt #Remoção do ficheiro txt Info2.txt dentro da pasta 2022-01-14, o -r é utilizado para conseguirmos remover pastas dentro de uma certa diretoria
	
	cd
	rm ./Desktop/Videoteca/Filmes/"Data de lançamento"/2022-01-14/"Scream"/Info3.txt #Remoção através de um Path

	echo "Pastas Removidas"
else
	echo "Videoteca não criada, necessita executar o script script.sh, e de seguida executar o script texto.sh"

fi






















