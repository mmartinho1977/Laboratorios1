#Criação da pasta Videoteca e dentro dela as pastas: Horror,Action,Comedy,Romance;
mkdir -p Videoteca/Movies/{Horror,Action,Comedy,Romance}
#Criação das pastas dos filmes nas respetivas categorias
mkdir -p Videoteca/Movies/Horror/{Orphan,TheNun}
mkdir -p Videoteca/Movies/Action/Avengers
mkdir -p Videoteca/Movies/Comedy/{GetHard,WeddingCrashers,Deadpool,Batman}
mkdir -p Videoteca/Movies/Romance/PlayingItCool
#Criação dos ficheiro Plot.txt, Rating.txt, Cast.txt dentro da pasta de cada filme.
echo "A husband and wife who recently lost their baby adopt a nine-year-old girl who is not nearly as innocent as she appears." > Videoteca/Movies/Horror/Orphan/Plot.txt
echo "7" > Videoteca/Movies/Horror/Orphan/Rating.txt
echo "Vera Farmiga,Isabelle Fuhrman,Peter Sarsgaard,Aryana Engineer,Jimmy Bennett" > Videoteca/Movies/Horror/Orphan/Cast.txt 
echo "A priest with a haunted past and a novice on the threshold of her final vows are sent by the Vatican to investigate the death of a young nun in Romania and confront a malevolent force in the form of a demonic nun." > Videoteca/Movies/Horror/TheNun/Plot.txt
echo "5" > Videoteca/Movies/Horror/TheNun/Rating.txt
echo "Demián Bichir,Taissa Farmiga,Jonas Bloquet,Charlotte Hope,Ingrid Bisu,Bonnie Aarons" > Videoteca/Movies/Horror/TheNun/Cast.txt
echo "Earth's mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity." > Videoteca/Movies/Action/Avengers/Plot.txt
echo "8" > Videoteca/Movies/Action/Avengers/Rating.txt 
echo "Robert Downey, Jr.Chris Evans,Mark Ruffalo,Chris Hemsworth" > Videoteca/Movies/Action/Avengers/Cast.txt 
echo "When millionaire James King is jailed for fraud and bound for San Quentin, he turns to Darnell Lewis to prep him to go behind bars." > Videoteca/Movies/Comedy/GetHard/Plot.txt 
echo "6" > Videoteca/Movies/Comedy/GetHard/Rating.txt 
echo "Kevin Hart, Will Ferrell" > Videoteca/Movies/Comedy/GetHard/Cast.txt 
echo "John Beckwith and Jeremy Grey, a pair of committed womanizers who sneak into weddings to take advantage of the romantic tinge in the air" > Videoteca/Movies/Comedy/WeddingCrashers/Plot.txt 
echo "6" > Videoteca/Movies/Comedy/WeddingCrashers/Rating.txt 
echo "Owen Wilson, Vince Vaughn" > Videoteca/Movies/Comedy/WeddingCrashers/Cast.txt
echo "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.t" > Videoteca/Movies/Comedy/Batman/Plot.txt 
echo "9" > Videoteca/Movies/Comedy/Batman/Rating.txt 
echo "Chrstian Bale, Heath Ledger" > Videoteca/Movies/Comedy/Batman/Cast.txt
echo "A wisecracking mercenary gets experimented on and becomes immortal but ugly, and sets out to track down the man who ruined his looks." > Videoteca/Movies/Comedy/Deadpool/Plot.txt 
echo "8" > Videoteca/Movies/Comedy/Deadpool/Rating.txt 
echo "Ryan Reynolds, Morena Baccarin" > Videoteca/Movies/Comedy/Deadpool/Cast.txt  
echo "Unrequited love motivates a guy to write about his experiences." > Videoteca/Movies/Romance/PlayingItCool/Plot.txt
echo "Chris Evans, Michelle Monaghan" > Videoteca/Movies/Romance/PlayingItCool/Cast.txt
echo "6" > Videoteca/Movies/Romance/PlayingItCool/Rating.txt

#Visto que o filme Deadpool pertence á categoria Comedy e Actino, efetuei uma copia, colocando assim este filme nas duas categorias;
cp -r Videoteca/Movies/Comedy/Deadpool Videoteca/Movies/Action

# Mover filme de categoria
mv Videoteca/Movies/Comedy/Batman Videoteca/Movies/Action

#Criação o zip de toda a diretoria Videoteca
zip -r Videoteca.zip Videoteca 

#Efetua o unzip para a pasta Desktop
unzip Videoteca.zip -d /home/filipefaria/Videos

#Criação de pasta Info
mkdir -p Info 

#Numero de filmes em cada categoria da videoteca
find /home/filipefaria/Desktop/Videoteca/Movies/ -type d -print |wc -l >> Info/NumeroFilmes.txt

#Descobre a localização dos filmes da videoteca com Rating de 9.
grep -Hrn 9 Videoteca/ >> Info/BestRatings.txt 
