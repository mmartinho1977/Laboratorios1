DIR="./Videoteca"
if [ -d "$DIR" ]; then
 rm -r $DIR
fi

#Criar a pasta "Videoteca"
mkdir Videoteca

#Navegar para a pasta "Videoteca"
cd Videoteca/

#Criar pastas com as categorias de filmes
mkdir {Top\ 5,Ação,Comédia,Drama,Romance}

#Criar filmes dentro de cada categoria.
mkdir {Ação/{Spider-Man:\ No\Way\ Home,The\ Last\ Duel,Dune},Comédia/{Vacation\ Friends,Bad\ Trip,Free\ Guy},Drama/{House\ of\ Gucci,The\ Power\ of\ the\ Dog,The\ Last\ Duel},Romance/{West\ Side\ Story,Licorice\ Pizza,The\ French\ Dispatch}}

#Criar os ficheiros reviews, resumo e elenco para cada um dos filmes
touch Ação/{Spider-Man:\ No\Way\ Home,The\ Last\ Duel,Dune}/{reviews.txt,resumo.txt,elenco.txt}
touch Comédia/{Vacation\ Friends,Bad\ Trip,Free\ Guy}/{reviews.txt,resumo.txt,elenco.txt}
touch Drama/{House\ of\ Gucci,The\ Power\ of\ the\ Dog,The\ Last\ Duel}/{reviews.txt,resumo.txt,elenco.txt}
touch Romance/{West\ Side\ Story,Licorice\ Pizza,The\ French\ Dispatch}/{reviews.txt,resumo.txt,elenco.txt}

#Spider-man
echo $'With Spider-Man`s identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be Spider-Man.' > Ação/Spider-Man:\ No\Way\ Home/resumo.txt
echo $'Benedict Cumberbatch.\nZendaya.\nMarisa Tomei.\nTom Holland.\nJon Favreau.\nAlfred Molina.\nWilliam Dafoe.\nJ.K.Simmons.'> Ação/Spider-Man:\ No\Way\ Home/elenco.txt
echo $'9.2'> Ação/Spider-Man:\ No\Way\ Home/reviews.txt

#The Last Duel
echo $'King Charles VI declares that Knight Jean de Carrouges settle his dispute with his squire by challenging him to a duel' >Ação/The\ Last\ Duel/resumo.txt
echo $'Matt Damon.\nAdam Driver.\nJodieComer.\nHarrietWalter.\nBenAffleck.' >Ação/The\ Last\ Duel/elenco.txt
echo $'7.5' >Ação/The\ Last\ Duel/reviews.txt

#Dune
echo $'Feature adaptation of Frank Herbert`s science fiction novel about the son of a noble family entrusted with the protection of the most valuable asset and most vital element in the galaxy.' >Ação/Dune/resumo.txt
echo $'Timothée Chalamet.\nRebecca Ferguson.\nZendaya.\nOscar Isaac.\nJason Momoa.' >Ação/Dune/elenco.txt
echo $'8.2' >Ação/Dune/reviews.txt

#Vacation Friends
echo $'A couple meets up with another couple while on vacation in Mexico, but their friendship takes an awkward turn when they get back home.' >Comédia/Vacation\ Friends/resumo.txt
echo $'Lil Rel Howery.\nYvonne Orji.\nJohn Cena.\nMeredith Hagner.\nRobert Wisdom.' >Comédia/Vacation\ Friends/elenco.txt
echo $'6.3' >Comédia/Vacation\ Friends/reviews.txt

#Bad Trip
echo $'This mix of a scripted buddy comedy road movie and a real hidden camera prank show follows the outrageous misadventures of two buds stuck in a rut who embark on a cross-country road trip to NYC. The storyline sets up shocking real pranks.' >Comédia/Bad\ Trip/resumo.txt
echo $'Eric André.\nMichaela Conlin.\nLil Rel Howery.\nTiffany Haddish.\nGerald Espinoza.' >Comédia/Bad\ Trip/elenco.txt
echo $'6.6' >Comédia/Bad\ Trip/reviews.txt

#Free Guy
echo $'A bank teller discovers that hes actually an NPC inside a brutal, open world video game.' >Comédia/Free\ Guy/resumo.txt
echo $'Ryan Reynolds.\nJodie Comer.\nTaika Waititi.\nLil Tel Howery.\nJoe Keery.' >Comédia/Free\ Guy/elenco.txt
echo $'7.2' >Comédia/Free\ Guy/reviews.txt

#House of Gucci
echo $'When Patrizia Reggiani, an outsider from humble beginnings, marries into the Gucci family, her unbridled ambition begins to unravel their legacy and triggers a reckless spiral of betrayal, decadence, revenge, and ultimately...murder.' >Drama/House\ of\ Gucci/resumo.txt
echo $'Lady Gaga.\nAdam Driver.\nAl Pacino.\nJeremy Irons.\nJared Leto.' >Drama/House\ of\ Gucci/elenco.txt
echo $'6.9' >Drama/House\ of\ Gucci/reviews.txt

#Power oh the Dog
echo $'Charismatic rancher Phil Burbank inspires fear and awe in those around him. When his brother brings home a new wife and her son, Phil torments them until he finds himself exposed to the possibility of love.' >Drama/The\ Power\ of\ the\ Dog/resumo.txt
echo $'Benedict Cumberbatch.\nKristen Dunst.\nJesse Plemons.\nKodi Smit-McPhee.\nGeneviève Lemon.' >Drama/The\ Power\ of\ the\ Dog/elenco.txt
echo $'7.0' >Drama/The\ Power\ of\ the\ Dog/reviews.txt

#The Last Duel
echo $'King Charles VI declares that Knight Jean de Carrouges settle his dispute with his squire by challenging him to a duel.' >Drama/The\ Last\ Duel/resumo.txt
echo $'Matt Damon.\nAdam Driver.\nJodieComer.\nHarrietWalter.\nBenAffleck.' >Drama/The\ Last\ Duel/elenco.txt
echo $'7.5' >Drama/The\ Last\ Duel/reviews.txt

#West Side Story
echo $'An adaptation of the 1957 musical, West Side Story explores forbidden love and the rivalry between the Jets and the Sharks, two teenage street gangs of different ethnic backgrounds.' >Romance/West\ Side\ Story/resumo.txt
echo $'Ansor Elgort.\nRachel Zegler.\nAriana Debose.\nDavid Alvarez.\nRita Moreno.' >Romance/West\ Side\ Story/elenco.txt
echo $'7.9' >Romance/West\ Side\ Story/reviews.txt

#The Last Duel
echo $'The story of Alana Kane and Gary Valentine growing up, running around and going through the treacherous navigation of first love in the San Fernando Valley, 1973.' >Romance/Licorice\ Pizza/resumo.txt
echo $'Alana Haim.\nCooper Hoffman.\nSean Penn.\nTom Waits.\nWill Gaicchino.' >Romance/Licorice\ Pizza/elenco.txt
echo $'8.4' >Romance/Licorice\ Pizza/reviews.txt

#The Last Duel
echo $'A love letter to journalists set in an outpost of an American newspaper in a fictional twentieth century French city that brings to life a collection of stories published in "The French Dispatch Magazine".' >Romance/The\ French\ Dispatch/resumo.txt
echo $'Benecia Del Toro.\nAdrien Brody.\nTilda Swinton.\nLéa Seydoux.\nFrances McDormand.' >Romance/The\ French\ Dispatch/elenco.txt
echo $'7.4' >Romance/The\ French\ Dispatch/reviews.txt

echo "Pretende prosseguir com a criação do ficheiro de Top 5 ratings (1 para continuar)"
read bool

true=1;

if [ $bool == $true ]; then
#Cria um ficheiro onde armazena os ratings de 	todos os filmes.
touch ratings.txt

#Cria um ciclo for para cada pasta dentro da pasta Videoteca
for folder in */; do
shopt -s extglob
#Formata a string do nome do folder
result=${folder%%+(/)}
result=${result##*/}

#Verifica se a pasta atual não é a pasta de top 5
if [[ $result != *"Top"* ]]
then
	#Muda de diretório para a pasta no ciclo for
	cd $folder

	#Cria outro ciclo for para cada filme dentro de cada categoria
	for subfolder in */; do
	
	#Formata a string do nome do filme
	result2=${subfolder%%+(/)}
	result2=${result2##*/}
	
	#Muda de diretório para a pasta do filme
	cd "$result2"
	
	#Vai buscar o valor do filme e guarda em variavel
	value=$(<reviews.txt)
	
	#Guarda o valor e o nome do filme no ficheiro de ratings.
	echo "$value $result2 ">>../../ratings.txt
	
	#Muda de diretório para a pasta acima
	cd ..

	#Fecha o ciclo for
	done

	#Muda de diretório para a pasta acima
	cd ..

#Fecha o if
fi

#Fecha o ciclo for
done

#Ordena os filmes no ficheiro ratings
sort -r -o ./ratings.txt ./ratings.txt

#Cria um ficheiro top5ratings na pasta Top 5
touch ./Top\ 5/top5ratings.txt

#Filtra as 5 primeiras linhas do ficheiro ratings e adicionar no ficheiro top5ratings
sed '6,$ d' ./ratings.txt > ./Top\ 5/top5ratings.txt 

#Apaga o ficheiro ratings
rm ./ratings.txt
fi



