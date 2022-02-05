#!/bin/bash

#Criação da videoteca

mkdir videoteca

#criação das categorias

cd videoteca

mkdir ação

mkdir ficção 

mkdir desporto

mkdir comédia

#Mover os filmes para as respetivas categorias

cd ..

cp -r ./Filmes/A_Mascara.txt ./videoteca/comédia/

cp -r ./Filmes/Goal!.txt ./videoteca/desporto/

cp -r ./Filmes/Matrix.txt ./videoteca/ficção/

cp -r ./Filmes/O_Cavaleiro_das_Trevas.txt ./videoteca/ação/

cd videoteca

echo " 1 - comédia"
echo " 2 - desporto"
echo " 3 - ficção"
echo " 4 - ação"
echo " Escolha uma das opções acima: "

read A

if [ $A = "1" ]; then 

cd comédia

elif [ $A = "2" ]; then 
 
cd desporto

elif [ $A = "3" ]; then 

cd ficção

elif [ $A = "4" ]; then 
 
cd ação

fi

B=$(ls)

echo "${B}"

cat $B

read C

echo "deseja sair?"
echo "s ou n"
read D

if [$D = "s"]; then

exit

fi








