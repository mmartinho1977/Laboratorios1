#!/bin/bash
#script desenvolvida para a uc li- tp2
#mkdir permite criar uma nova diretoria
#cd permitir navegar para diretorias
#touch criar novos ficheiros
#cd .. permite voltar atras na diretoria
mkdir Videoteca
cd Videoteca
mkdir AcaoAventura Drama ComediaRomantica Sci-Fi Terror
cd AcaoAventura
mkdir filme
cd filme
mkdir trailer elenco classificacao
cd trailer
touch trailer.avi
cd ..
cd elenco
touch elenco.pdf
cd ..
cd classificacao
touch classificacao.jpeg
cd ..
cd ..
cd ..
cd Drama
mkdir filme
cd filme
mkdir trailer elenco classificacao
cd trailer
touch trailer.avi
cd ..
cd elenco
touch elenco.pdf
cd ..
cd classificacao
touch classificacao.jpeg
cd ..
cd ..
cd ..
cd ComediaRomantica
mkdir filme
cd filme
mkdir trailer elenco classificacao
cd trailer
touch trailer.avi
cd ..
cd elenco
touch elenco.pdf
cd ..
cd classificacao
touch classificacao.jpeg
cd ..
cd ..
cd ..
cd Sci-Fi
mkdir filme
cd filme
mkdir trailer elenco classificacao
cd trailer
touch trailer.avi
cd ..
cd elenco
touch elenco.pdf
cd ..
cd classificacao
touch classificacao.jpeg
cd ..
cd ..
cd ..
cd Terror
mkdir filme
cd filme
mkdir trailer elenco classificacao
cd trailer
touch trailer.avi
cd ..
cd elenco
touch elenco.pdf
cd ..
cd classificacao
touch classificacao.jpeg
cd ..
cd ..
cd ..
cd ..
#Criada a  Videoteca vamos avançar para a opçao de comprimir a diretoria
#tar cf permite criar o ficheiro da diretoria
#echo escrever equivale a  printf
#read ler variavel equivale a scanf
#if then  estrutura condicional usar fi para fechar
tar cf Videoteca.tar Videoteca
echo "Pretende zipar a pasta Videoteca? Use 1"
read opcao;
if [ $opcao == "1" ];
then
gzip  Videoteca.tar
fi
echo script concluida com sucesso
