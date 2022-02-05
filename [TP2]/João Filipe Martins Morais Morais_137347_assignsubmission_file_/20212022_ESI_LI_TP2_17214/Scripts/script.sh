#!/bin/bash

clear
cd #É utilizado para mudar o diretorio, neste caso estamos no diretorio /home/jmorais
cd Desktop/


dir="/home/jmorais/Desktop/Videoteca" #Caminho da pasta Videoteca.

if [ -d $dir ] #Verifica se a pasta Videoteca existe.
then #Se existir imprime a mensagem Videoteca já existente
	echo "Videoteca já existente";
else #Se não existir então é criada a Videoteca


	#O comando mkdir é utilizado para criar directorios
	#O comando mkdir -p é utilizado para criar um subdiretorio dentro de um diretorio sem ter de entrar no diretorio;
	#O comando touch é utilizado para criar ficheiros, como por exemplo ficheiros txt;
	
	mkdir Videoteca
	
	cd Videoteca/
	
	mkdir -p Filmes/{"Data de lançamento","Top 5 Filmes","Filmes mais Populares","Melhor Bilheteira","Em breve","Procurar filmes por gênero"}
	
	cd Filmes/
	
	mkdir -p "Data de lançamento"/{2021-12-{15..22},2022-01-{7..14}}
	
	cd "Data de lançamento"
	
	mkdir -p 2021-12-15/Minamata
	touch ./2021-12-15/Minamata/{Resumo.txt,Info.txt}
	
	mkdir -p 2021-12-17/"Spider-Man: No Way Home"
	touch ./2021-12-17/"Spider-Man: No Way Home"/{Resumo.txt,Info.txt}
	
	mkdir -p 2021-12-22/"The Matrix Resurrections"
	touch ./2021-12-22/"The Matrix Resurrections"/{Resumo.txt,Info.txt}
	
	mkdir -p 2022-01-7/"The 355"
	touch ./2022-01-7/"The 355"/{Resumo.txt,Info.txt}
	
	mkdir -p 2022-01-14/"Scream"
	touch ./2022-01-14/"Scream"/{Resumo.txt,Info.txt}
	
	cd - #Voltamos para o diretório anterior
	clear
	
	mkdir -p "Top 5 Filmes"/{"Os Condenados de Shawshank","O Padrinho","O Padrinho: Parte II","O Cavaleiro das Trevas","Doze Homens em Fúria"}
	
	touch ./"Top 5 Filmes"/"Os Condenados de Shawshank"/{Resumo.txt,Info.txt}
	touch ./"Top 5 Filmes"/"O Padrinho"/{Resumo.txt,Info.txt}
	touch ./"Top 5 Filmes"/"O Padrinho: Parte II"/{Resumo.txt,Info.txt}
	touch ./"Top 5 Filmes"/"O Cavaleiro das Trevas"/{Resumo.txt,Info.txt}
	touch ./"Top 5 Filmes"/"Doze Homens em Fúria"/{Resumo.txt,Info.txt}
	
	mkdir -p "Filmes mais Populares"/{"O Poder do Cão","Spider-Man: No Way Home","Matrix Resurrections","West Side Story","House Gucci"}
	
	touch ./"Filmes mais Populares"/"O Poder do Cão"/{Resumo.txt,Info.txt}
	touch ./"Filmes mais Populares"/"Spider-Man: No Way Home"/{Resumo.txt,Info.txt}
	touch ./"Filmes mais Populares"/"Matrix Resurrections"/{Resumo.txt,Info.txt}
	touch ./"Filmes mais Populares"/"West Side Story"/{Resumo.txt,Info.txt}
	touch ./"Filmes mais Populares"/"House Gucci"/{Resumo.txt,Info.txt}
	
	mkdir -p "Melhor Bilheteira"/{"West Side Story","Encanto","Ghostbusters: Afterlife","House of Gucci","Eternals"}
	
	touch ./"Melhor Bilheteira"/"West Side Story"/{Resumo.txt,Info.txt}
	touch ./"Melhor Bilheteira"/"Encanto"/{Resumo.txt,Info.txt}
	touch ./"Melhor Bilheteira"/"Ghostbusters: Afterlife"/{Resumo.txt,Info.txt}
	touch ./"Melhor Bilheteira"/"House of Gucci"/{Resumo.txt,Info.txt}
	touch ./"Melhor Bilheteira"/"Eternals"/{Resumo.txt,Info.txt}
	
	cd "Em breve"
	
	mkdir -p 2021-12-24/{"Matrix Resurrections","The King's Man: O Início","A Tragédia de Macbeth"}
	touch ./2021-12-24/"Matrix Resurrections"/{Resumo.txt,Info.txt}
	touch ./2021-12-24/"The King's Man: O Início"/{Resumo.txt,Info.txt}
	touch ./2021-12-24/"A Tragédia de Macbeth"/{Resumo.txt,Info.txt}
	
	
	mkdir -p 2021-12-31/Cyrano
	touch ./2021-12-31/Cyrano/{Resumo.txt,Info.txt}
	
	cd -
	clear
	
	mkdir -p "Procurar filmes por gênero"/{Comedy,Sci-Fi,Action}
	
	cd "Procurar filmes por gênero"
	
	mkdir -p Comedy/{"And Just Like That","Não Olhem Para Cima","Caça-Fantasmas: O Legado"}
	touch ./Comedy/"And Just Like That"/{Resumo.txt,Info.txt}
	touch ./Comedy/"Não Olhem Para Cima"/{Resumo.txt,Info.txt}
	touch ./Comedy/"Caça-Fantasmas: O Legado"/{Resumo.txt,Info.txt}
	
	mkdir -p Sci-Fi/{Hawkeye,"Spider-Man: No Way Home","Arcane: League of Legends"}
	touch ./Sci-Fi/Hawkeye/{Resumo.txt,Elenco.txt}
	touch ./Sci-Fi/"Spider-Man: No Way Home"/{Resumo.txt,Info.txt}
	touch ./Sci-Fi/"Arcane: League of Legends"/{Resumo.txt,Info.txt}
	
	mkdir -p Action/{"La Casa de Papel",Hawkeye,"A Roda do Tempo"}
	touch ./Action/"La Casa de Papel"/{Resumo.txt,Info.txt}
	touch ./Action/Hawkeye/{Resumo.txt,Info.txt}
	touch ./Action/"A Roda do Tempo"/{Resumo.txt,Info.txt}
	
	
	
	echo "Videoteca criada"
	
fi

