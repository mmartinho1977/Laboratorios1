#!/bin/bash

#Confirmação de zip ou unzip
echo "Deseja fazer um zip ou unzip do ficheiro?"
echo "1 - Zip / 2- Unzip"
read resposta

if [ ! $resposta -eq 1 ] && [ ! $resposta -eq 2 ]
then
echo "Resposta inválida"
fi

if [ $resposta -eq 1 ]
then
#Zip do ficheiro
cd ~/Desktop
echo "Comprimindo o ficheiro..."
sleep 1
zip -r videoteca.zip Videoteca\ Predefinida 
echo "Ficheiro comprimido"
fi

if [ $resposta -eq 2 ]
then
#Unzip do ficheiro
cd ~/Desktop
echo "Extraindo o ficheiro..."
sleep 1
unzip videoteca.zip
echo "Ficheiro extraido"
fi
