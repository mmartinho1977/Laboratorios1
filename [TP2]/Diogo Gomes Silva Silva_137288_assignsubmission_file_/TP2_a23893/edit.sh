# Diogo Gomes Silva 23893

cd ~/Documentos  #Navega até à pasta Local Documentos
cd Videoteca  #Entra na diretoria Videoteca
cd Ação #Entra na pasta da Categoria Ação
mv BayWatch ~/Documentos/Videoteca/Comédia  #Move a pasta do FIlme Baywatch da pasta Categoria de ação para a pasta categoria de Comédia
sleep 2

cd .. #Volta para a pasta anterior
cd FicçãoCientifica
cd TheHUngerGames
rm Cast.txt Summary.txt Review.txt Trailer.sh  #Remove os arquivos que foram criados na pasta TheHUngerGames por engano
cd ..
mv cast.txt Summary.txt Review.txt Trailer.sh ~/Documentos/Videoteca/FicçãoCientifica/TheHUngerGames

sleep 2

cd .. 
cd Ação 
rm -r Pasta5 #Remove a Pasta5 e Pasta6 e os seus conteudos
rm -r Pasta6 
cd Fury
sed -i 's/Primeira/Segunda/g' Summary.txt  #Abre o nano no terminal e corrige a palavra "Primeira" para "Segunda" no texto "Primeira Guerra Mundial"
