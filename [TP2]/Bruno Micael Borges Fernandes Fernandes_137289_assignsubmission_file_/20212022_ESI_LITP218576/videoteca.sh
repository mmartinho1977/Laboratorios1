#Criacao da estrutura de pasta da videoteca
mkdir -p Videoteca/Filmes/{Acao,Comedia,Romance} 
mkdir -p Videoteca/Filmes/Acao/{FastAndFurious}
mkdir -p Videoteca/Filmes/Comedia/{BalasEBolinhos}
mkdir -p Videoteca/Filmes/Romance/{50ShadesOfGrey}

#Criacao das sinopses e elenco principal dos filmes escolhidos 
echo "A teenager becomes a major competitor in the world of drift racing after moving in with his father in Tokyo to avoid a jail sentence in America.." > Videoteca/Filmes/Acao/FastAndFurious/Sinopse.txt
echo "Lucas Black, Zachery Ty Bryan, Sad Moss" > Videoteca/Filmes/Acao/FastAndFurious/Elenco.txt

echo "A group of friends meet and combine a robbery from a gasoline station." > Videoteca/Filmes/Comedia/BalasEBolinhos/Sinopse.txt
echo "Jorge Neto, Luis Ismael, J.D. Duarte" > Videoteca/Filmes/Comedia/BalasEBolinhos/Elenco.txt

echo "Literature student Anastasia Steele's life changes forever when she meets handsome, yet tormented, billionaire Christian Grey." > Videoteca/Filmes/Romance/50ShadesOfGrey/Sinopse.txt
echo "Dakota Johnson, Jamie Dornan, Jennifer Ehle" > Videoteca/Filmes/Romance/BalasEBolinhos//Elencoo.txt

#Move o ficheiro que por engano foi criado na pasta de Balas e bolinhos
mv VVideoteca/Filmes/Romance/BalasEBolinhos//Elencoo.txt Videoteca/Filmes/Romance/50ShadesOfGrey//Elenco.txt 
#Copia o filme balas e bolinhos para acao pois o filme enquadra-se nas duas categorias
cp -R Videoteca/Filmes/Comedia/BalasEBolinhos Videoteca/Filmes/Acao/BalasEBolinhos

zip -r Videoteca.zip Videoteca #Zipa a diretoria
unzip Videoteca.zip -d /home/Users-MBP/Documents #Descomprime a diretoria para a pasta indicada no argumento

mkdir -p Final #Cria a pasta Final

#Conta o total de pastas
find /home/Users-MBP/Documents/Videoteca/ -type d -print |wc -l >> Final/TotalPastas.txt


#Procura a palavra "Dakota" dento de toda a estrutura de pastas
grep -Hrn Dakota  Videoteca/ >> Final/TotalFicheiros.txt 
