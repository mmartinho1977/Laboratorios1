#!/bin/bash

#Confirmação da organização
echo "Deseja organizar as informações da Videoteca Predefinida?"
echo "1 - Sim; 0 - Não"
read resposta

if [ $resposta -eq 1 ]
then
#Acesso aos arquivos para os organizar e organizar top casts por ordem alfabética
echo "Filmes:"
echo "Saving Private Ryan:"
cd ~/Desktop/Videoteca\ Predefinida/Filmes/Guerra/Saving\ Private\ Ryan
sort Cast.txt

echo "Scary Movie:"
cd ~/Desktop/Videoteca\ Predefinida/Filmes/Terror/Scary\ Movie
sort Cast.txt

echo "Series:"
echo "La Casa De Papel:"
cd ~/Desktop/Videoteca\ Predefinida/Series/La\ Casa\ De\ Papel
sort Cast.txt

echo "Prison Break:"
cd  ~/Desktop/Videoteca\ Predefinida/Series/Prison\ Break
sort Cast.txt

echo "Outer Banks:"
cd ~/Desktop/Videoteca\ Predefinida/Series/Outer\ Banks
sort Cast.txt

#Finalização do Script
echo "Arquivos organizados por ordem alfabética!"
else
echo "Finalizando Script..."
sleep 1
fi
