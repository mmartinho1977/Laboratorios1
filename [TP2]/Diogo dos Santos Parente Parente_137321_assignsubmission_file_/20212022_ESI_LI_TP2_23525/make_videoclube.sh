#!/bin/bash

#verificar se existe
if [ -d "videoclube" ]
then
echo "videoclube already exists, please delete existing one"
exit
else
#criar diretorio principal
mkdir videoclube
echo "videoclube directory created"
fi

cd videoclube
#categorias
mkdir comedia
mkdir romance
mkdir animacao
mkdir aventura
mkdir todos

#filmes

#And Just Like That...
mkdir AndJustLikeThat
cd AndJustLikeThat
#criar ficheiros txt
touch avaliacao.txt
touch resumo.txt
touch criadores.txt
touch elenco_principal.txt

#escrever nos ficheiros
echo '5.6/10' > avaliacao.txt
echo 'The series will follow Carrie, Miranda and Charlotte as they navigate the journey from the complicated reality of life and friendship in their 30s to the even more complicated reality of life and friendship in their 50s.' > resumo.txt
echo 'Michael Patrick and KingDarren Star' > criadores.txt
echo 'Sarah Jessica Parker, Cynthia Nixon and Kristin Davis' > elenco_principal.txt
#voltar ao diretorio do videoclube
cd ..

#mover filme para as categorias corretas
cp -r AndJustLikeThat comedia/
cp -r AndJustLikeThat romance/
cp -r AndJustLikeThat todos/

#apagar filme do dirtorio principal
rm -rf AndJustLikeThat



#Arcane
mkdir Arcane
cd Arcane
#criar ficheiros txt
touch avaliacao.txt
touch resumo.txt
touch criadores.txt
touch elenco_principal.txt

#escrever nos ficheiros
echo '9.2/10' > avaliacao.txt
echo 'Set in utopian Piltover and the oppressed underground of Zaun, the story follows the origins of two iconic League champions-and the power that will tear them apart' > resumo.txt
echo 'Riot Games' > criadores.txt
echo 'Hailee Steinfeld, Kevin Alejandro and Jason Spisak' > elenco_principal.txt
#voltar ao diretorio do videoclube
cd ..

#mover filme para as categorias corretas
cp -r Arcane animacao/
cp -r Arcane aventura/
cp -r Arcane todos/

#apagar filme do dirtorio principal
rm -rf Arcane

#Encanto
mkdir Encanto
cd Encanto
#criar ficheiros txt
touch avaliacao.txt
touch resumo.txt
touch criadores.txt
touch elenco_principal.txt

#escrever nos ficheiros
echo '7.6/10' > avaliacao.txt
echo 'A young Colombian girl has to face the frustration of being the only member of her family without magical powers.' > resumo.txt
echo 'Jared Bush, Byron Howard and Charise Castro Smith(co-directed by)' > criadores.txt
echo 'Stephanie Beatriz(voice), María Cecilia Botero(voice) and John Leguizamo(voice)' > elenco_principal.txt
#voltar ao diretorio do videoclube
cd ..

#mover filme para as categorias corretas
cp -r Encanto animacao/
cp -r Encanto comedia/
cp -r Encanto todos/

#apagar filme do dirtorio principal
rm -rf Encanto


#TheWitcher
mkdir TheWitcher
cd TheWitcher
#criar ficheiros txt
touch avaliacao.txt
touch resumo.txt
touch criadores.txt
touch elenco_principal.txt

#escrever nos ficheiros
echo '8.2/10' > avaliacao.txt
echo 'Geralt of Rivia, a solitary monster hunter, struggles to find his place in a world where people often prove more wicked than beasts.' > resumo.txt
echo 'Lauren Schmidt' > criadores.txt
echo 'Henry Cavill, Freya Allan and Anya Chalotra' > elenco_principal.txt
#voltar ao diretorio do videoclube
cd ..

#mover filme para as categorias corretas
cp -r TheWitcher aventura/
cp -r TheWitcher todos/

#apagar filme do dirtorio principal
rm -rf TheWitcher


#WestSideStory
mkdir WestSideStory
cd WestSideStory
#criar ficheiros txt
touch avaliacao.txt
touch resumo.txt
touch criadores.txt
touch elenco_principal.txt

#escrever nos ficheiros
echo '7.9/10' > avaliacao.txt
echo 'An adaptation of the 1957 musical, West Side Story explores forbidden love and the rivalry between the Jets and the Sharks, two teenage street gangs of different ethnic backgrounds.' > resumo.txt
echo 'Steven Spielberg' > criadores.txt
echo 'Ansel Elgort, Rachel Zegler and Ariana DeBose' > elenco_principal.txt
#voltar ao diretorio do videoclube
cd ..

#mover filme para as categorias corretas
cp -r WestSideStory romance/
cp -r WestSideStory todos/

#apagar filme do dirtorio principal
rm -rf WestSideStory


#And Just Like That...
mkdir ThePowerOfTheDog
cd ThePowerOfTheDog
#criar ficheiros txt
touch avaliacao.txt
touch resumo.txt
touch criadores.txt
touch elenco_principal.txt

#escrever nos ficheiros
echo '7.0/10' > avaliacao.txt
echo 'Charismatic rancher Phil Burbank inspires fear and awe in those around him. When his brother brings home a new wife and her son, Phil torments them until he finds himself exposed to the possibility of love.' > resumo.txt
echo 'Jane Campion' > criadores.txt
echo 'Benedict Cumberbatch, Kirsten Dunst and Jesse Plemons' > elenco_principal.txt
#voltar ao diretorio do videoclube
cd ..

#mover filme para as categorias corretas
cp -r ThePowerOfTheDog romance/
cp -r ThePowerOfTheDog todos/

#apagar filme do dirtorio principal
rm -rf ThePowerOfTheDog



#TheLostCity
mkdir TheLostCity
cd TheLostCity
#criar ficheiros txt
touch avaliacao.txt
touch resumo.txt
touch criadores.txt
touch elenco_principal.txt

#escrever nos ficheiros
echo 'to be released' > avaliacao.txt
echo 'A reclusive romance novelist on a book tour with her cover model gets swept up in a kidnapping attempt that lands them both in a cutthroat jungle adventure.' > resumo.txt
echo 'Aaron Nee and Adam Nee' > criadores.txt
echo 'Sandra Bullock, Brad Pitt and Daniel Radcliffe' > elenco_principal.txt


#voltar ao diretorio do videoclube
cd ..

#mover filme para as categorias corretas
cp -r TheLostCity comedia/
cp -r TheLostCity aventura/
cp -r TheLostCity todos/

#apagar filme do dirtorio principal
rm -rf TheLostCity

#Rumble
mkdir Rumble
cd Rumble
#criar ficheiros txt
touch avaliacao.txt
touch resumo.txt
touch criadores.txt
touch elenco_principal.txt

#escrever nos ficheiros
echo '5.9/10' > avaliacao.txt
echo 'In a world where monster wrestling is a global sport and monsters are superstar athletes, teenage Winnie seeks to follow in her father´s footsteps by coaching a loveable underdog monster into a champion.' > resumo.txt
echo 'Hamish Grieve' > criadores.txt
echo 'Geraldine Viswanathan(voice), Will Arnett(voice) and Stephen A. Smith(voice)' > elenco_principal.txt
#voltar ao diretorio do videoclube
cd ..

#mover filme para as categorias corretas
cp -r Rumble animacao/
cp -r Rumble comedia/
cp -r Rumble todos/

#apagar filme do dirtorio principal
rm -rf Rumble


#Hawkeye
mkdir Hawkeye
cd Hawkeye
#criar ficheiros txt
touch avaliacao.txt
touch resumo.txt
touch criadores.txt
touch elenco_principal.txt

#escrever nos ficheiros
echo '7.9/10' > avaliacao.txt
echo 'Series based on the Marvel Comics superhero Hawkeye, centering on the adventures of Young Avenger, Kate Bishop, who took on the role after the original Avenger, Clint Barton.' > resumo.txt
echo 'Not mentioned in imdb' > criadores.txt
echo 'Jeremy RennerHailee SteinfeldFlorence Pugh' > elenco_principal.txt
#voltar ao diretorio do videoclube
cd ..

#mover filme para as categorias corretas
cp -r Hawkeye aventura/
cp -r Hawkeye todos/

#apagar filme do dirtorio principal
rm -rf Hawkeye


#HomeAlone
mkdir HomeAlone
cd HomeAlone
#criar ficheiros txt
touch avaliacao.txt
touch resumo.txt
touch criadores.txt
touch elenco_principal.txt

#escrever nos ficheiros
echo '7.6/10' > avaliacao.txt
echo 'An eight-year-old troublemaker must protect his house from a pair of burglars when he is accidentally left home alone by his family during Christmas vacation.' > resumo.txt
echo 'Chris Columbus' > criadores.txt
echo 'Macaulay Culkin, Joe Pesci and Daniel Stern' > elenco_principal.txt
#voltar ao diretorio do videoclube
cd ..

#mover filme para as categorias corretas
cp -r HomeAlone romance/
cp -r HomeAlone todos/

#apagar filme do dirtorio principal
rm -rf HomeAlone


cd ..
#copiar browse para videoclube
cp browse_videoclube.sh videoclube/

echo ""
echo "Como deseja guardar o videoclube?"
echo "[0] pasta comprimida(zip)"
echo "[1] pasta normal"
echo ""

read tipoDePasta
if [ $tipoDePasta = "0" ]; then
    zip -r videoclube.zip videoclube/
    rm -rf videoclube
elif [ $tipoDePasta = "1" ]; then
    cd videoclube
    bash browse_videoclube.sh
fi


