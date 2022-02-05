#Criação da pasta Videoteca e dentro dela as pastas: Horror,Action,Comedy,Romance;
mkdir -p Videoteca/Movies/{Horror,Action,Comedy,Romance}

#Criação das pastas dos filmes nas respetivas categorias;
mkdir -p Videoteca/Movies/Horror/Conjuring
mkdir -p Videoteca/Movies/Action/Shooter
mkdir -p Videoteca/Movies/Comedy/Deadpool
mkdir -p Videoteca/Movies/Romance/LifeAsWeKnowIt 

#Criação dos ficheiro Plot.txt, Rating.txt, Cast.txt dentro da pasta de cada filme.
echo "Paranormal investigators Ed and Lorraine Warren work to help a family terrorized by a dark presence in their farmhouse." > Videoteca/Movies/Horror/Conjuring/Plot.txt
echo "7" > Videoteca/Movies/Horror/Conjuring/Rating.txt
echo "Patrick Wilson,Vera Farmiga,Ron Livingston ,Lili Taylor,Shanley Caswell" > Videoteca/Movies/Horror/Conjuring/Cast.txt 

echo "A conspiracy thriller that follows the journey of Bob Lee Swagger, a highly-decorated veteran who is coerced back into action to prevent a plot to kill the President." > Videoteca/Movies/Action/Shooter/Plot.txt
echo "7" > Videoteca/Movies/Action/Shooter/Rating.txt 
echo "Ryan Phillippe,Shantel VanSanten,Cynthia Addai-Robinson,Omar Epps" > Videoteca/Movies/Action/Shooter/Cast.txt 

echo "A wisecracking mercenary gets experimented on and becomes immortal but ugly, and sets out to track down the man who ruined his looks." > Videoteca/Movies/Comedy/Deadpool/Plot.txt 
echo "8" > Videoteca/Movies/Comedy/Deadpool/Rating.txt 
echo "Ryan Reynolds, Morena Baccarin" > Videoteca/Movies/Comedy/Deadpool/Cast.txt  

echo "Two single adults become caregivers to an orphaned girl when their mutual best friends die in an accident." > Videoteca/Movies/Romance/LifeAsWeKnowIt/Plot.txt
echo "Katherine Heigl, Josh Duhamel, Josh Lucas" > Videoteca/Movies/Romance/LifeAsWeKnowIt/Cast.txt
echo "6" > Videoteca/Movies/Romance/LifeAsWeKnowIt/Rating.txt

#Cópia do filme Life as We Know It para a categoria de comédia.
cp -r Videoteca/Movies/Romance/LifeAsWeKnowIt Videoteca/Movies/Comedy

# Mover filme Deadpool de categoria
mv Videoteca/Movies/Comedy/Deadpool Videoteca/Movies/Action

#Criação o zip de toda a diretoria Videoteca.
zip -r Videoteca.zip Videoteca 

#Efetua o unzip.
unzip Videoteca.zip -d /home/hugobarbosa/Videos

#Criação de pasta Info
mkdir -p Info 

#Numero de filmes em cada categoria da videoteca.
find /home/hugobarbosa/Desktop/Videoteca/Movies/ -type d -print |wc -l >> Info/NumeroFilmes.txt

#Descobre a localização dos filmes da videoteca com Rating de 7.
grep -Hrn 7 Videoteca/ >> Info/BestRatings.txt 
