#!/bin/bash

cd 			#entrar na diretoria raiz
cd ./"Documents" 	#entrar na diretoria desejada
mkdir "Videoteca" 	#criar uma subdiretoria

cd Videoteca 		#entrar na subdiretoria criada
mkdir "Filmes" 		#criar uma subdiretoria de acordo com os temas pretendidos

cd Filmes		#entrar num dos temas criados
mkdir "Comédia" 	#criar uma subdiretoria de acordo com os Subtemas pretendidos

cd Comédia		#entrar num dos temas criados
mkdir "Deadpool" 	#criar uma subdiretoria de acordo com os Subtemas pretendidos

cd Deadpool 		#entrar num Subtema criado anteriormente
nano "Resumo" 		#adicionar informações sobre o Subtema (ver informação no ficheiro "Deadpool (2016)")
nano "Review" 		#adicionar informações sobre o Subtema (ver informação no ficheiro "Deadpool (2016)")