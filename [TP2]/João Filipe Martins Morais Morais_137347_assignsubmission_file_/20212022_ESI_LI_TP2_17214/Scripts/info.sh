#!/bin/bash

clear
cd
cd Desktop/

dir="/home/jmorais/Desktop/Videoteca" #Caminho da pasta Videoteca.

if [ -d $dir ] #Verifica se a pasta Videoteca existe.
then
	cd
	cd Desktop/
	tree Videoteca > ./Videoteca/tree.txt #Cria a árvore das directorias da Videoteca;
	
	cd
	cd Desktop/Videoteca/Filmes/"Data de lançamento"/2021-12-15/Minamata/
	
	echo "----------------------------------------------" >> conteudo.txt
	echo "Número de linhas :" >> conteudo.txt
	wc -l Resumo.txt >> conteudo.txt #serve para calcular o número de linhas
	echo "Número de palavras :" >> conteudo.txt
	wc -w Resumo.txt >> conteudo.txt #serve para calcular o número de palavras
	echo "Número de caracteres :" >> conteudo.txt
	wc -m Resumo.txt >> conteudo.txt #serve para calcular o número de caracteres
	echo "----------------------------------------------" >> conteudo.txt
	echo "Primeiras 3 linhas do ficheiro Resumo.txt" >> conteudo.txt
	head -3 Resumo.txt >> conteudo.txt #serve para mostrar as 3 primeiras linhas do conteudo do ficheiro
	echo "----------------------------------------------" >> conteudo.txt
	echo "Últimas 3 linhas do ficheiro Resumo.txt" >> conteudo.txt
	tail -3 Resumo.txt >> conteudo.txt #serve para mostrar as 3 ultimas linhas do conteudo do ficheiro
	echo "----------------------------------------------" >> conteudo.txt
	
	cat Resumo.txt conteudo.txt > cat.txt #Serve para concatenar os ficheiros Resumo.txt com conteudo.txt para o ficheiro cat.txt
	
	cd
	cd Desktop/Videoteca/Filmes/"Data de lançamento"/2022-01-7/"The 355"
	
	echo "----------------------------------------------" >> conteudo.txt
	echo "Número de linhas :" >> conteudo.txt
	wc -l Resumo.txt >> conteudo.txt #serve para calcular o número de linhas
	echo "Número de palavras :" >> conteudo.txt
	wc -w Resumo.txt >> conteudo.txt #serve para calcular o número de palavras
	echo "Número de caracteres :" >> conteudo.txt
	wc -m Resumo.txt >> conteudo.txt #serve para calcular o número de caracteres
	echo "----------------------------------------------" >> conteudo.txt
	echo "Primeiras 3 linhas do ficheiro Resumo.txt" >> conteudo.txt
	head -3 Resumo.txt >> conteudo.txt #serve para mostrar as 3 primeiras linhas do conteudo do ficheiro
	echo "----------------------------------------------" >> conteudo.txt
	echo "Últimas 3 linhas do ficheiro Resumo.txt" >> conteudo.txt
	tail -3 Resumo.txt >> conteudo.txt #serve para mostrar as 3 ultimas linhas do conteudo do ficheiro
	echo "----------------------------------------------" >> conteudo.txt
	
	cat Resumo.txt conteudo.txt > cat.txt #Serve para concatenar os ficheiros Resumo.txt com conteudo.txt para o ficheiro cat.txt
	
	cd
	cd Desktop/Videoteca/Filmes/"Top 5 Filmes"/"O Cavaleiro das Trevas"
	
	echo "----------------------------------------------" >> conteudo.txt
	echo "Número de linhas :" >> conteudo.txt
	wc -l Resumo.txt >> conteudo.txt #serve para calcular o número de linhas
	echo "Número de palavras :" >> conteudo.txt
	wc -w Resumo.txt >> conteudo.txt #serve para calcular o número de palavras
	echo "Número de caracteres :" >> conteudo.txt
	wc -m Resumo.txt >> conteudo.txt #serve para calcular o número de caracteres
	echo "----------------------------------------------" >> conteudo.txt
	echo "Primeiras 3 linhas do ficheiro Resumo.txt" >> conteudo.txt
	head -3 Resumo.txt >> conteudo.txt #serve para mostrar as 3 primeiras linhas do conteudo do ficheiro
	echo "----------------------------------------------" >> conteudo.txt
	echo "Últimas 3 linhas do ficheiro Resumo.txt" >> conteudo.txt
	tail -3 Resumo.txt >> conteudo.txt #serve para mostrar as 3 ultimas linhas do conteudo do ficheiro
	echo "----------------------------------------------" >> conteudo.txt
	
	cat Resumo.txt conteudo.txt > cat.txt #Serve para concatenar os ficheiros Resumo.txt com conteudo.txt para o ficheiro cat.txt
	
	cd
	cd Desktop/Videoteca/Filmes/"Top 5 Filmes"/"O Padrinho"
	
	echo "----------------------------------------------" >> conteudo.txt
	echo "Número de linhas :" >> conteudo.txt
	wc -l Resumo.txt >> conteudo.txt #serve para calcular o número de linhas
	echo "Número de palavras :" >> conteudo.txt
	wc -w Resumo.txt >> conteudo.txt #serve para calcular o número de palavras
	echo "Número de caracteres :" >> conteudo.txt
	wc -m Resumo.txt >> conteudo.txt #serve para calcular o número de caracteres
	echo "----------------------------------------------" >> conteudo.txt
	echo "Primeiras 3 linhas do ficheiro Resumo.txt" >> conteudo.txt
	head -3 Resumo.txt >> conteudo.txt #serve para mostrar as 3 primeiras linhas do conteudo do ficheiro
	echo "----------------------------------------------" >> conteudo.txt
	echo "Últimas 3 linhas do ficheiro Resumo.txt" >> conteudo.txt
	tail -3 Resumo.txt >> conteudo.txt #serve para mostrar as 3 ultimas linhas do conteudo do ficheiro
	echo "----------------------------------------------" >> conteudo.txt
	
	cat Resumo.txt conteudo.txt > cat.txt #Serve para concatenar os ficheiros Resumo.txt com conteudo.txt para o ficheiro cat.txt
	
	
	echo "Informação sobre ficheiros efectuada"
	
else
	echo "Videoteca não criada, necessita executar o script script.sh, e de seguida executar o script texto.sh"

fi

