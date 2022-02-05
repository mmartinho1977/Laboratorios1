#!/bin/bash

echo "Criando Diretório.."
sleep 1;
#Criar Diretório
#test = verificar se existe 
 if test -d Videoteca;
 then echo "Já existe o diretório Videoteca";
  else
mkdir -p Videoteca/{Ação,Ficção_Cientifíca,Romance,Terror,Comédia}
 echo "Diretório Criado!"
fi

if test -d Videoteca_1/Acao
then
#Renomear pastas de um diretório para posteriormente copiar para outro
mv Videoteca_1/Acao Videoteca_1/Ação
mv Videoteca_1/comedia Videoteca_1/Comédia
mv Videoteca_1/Ficcao Videoteca_1/Ficção_Cientifíca
mv Videoteca_1/romance Videoteca_1/Romance
mv Videoteca_1/terror Videoteca_1/Terror
fi

 if test -d Videoteca_1
then echo "Copiando as pastas"
#Copiar Conteudo para o Diretório Criado, o * é para copiar todo o conteudo dentro
cp -r Videoteca_1/Ação/* Videoteca/Ação
cp -r Videoteca_1/Comédia/* Videoteca/Comédia
cp -r Videoteca_1/Ficção_Cientifíca/* Videoteca/Ficção_Cientifíca
cp -r Videoteca_1/Romance/* Videoteca/Romance
cp -r Videoteca_1/Terror/* Videoteca/Terror

#Copia todos os arquivos cujo nome se inicia com a nomenclatura F_ da Videoteca_1 para a Videoteca
#Definição Variável e criação de F_cast com o texto que a variável define
resp="Harry Potter é espetacular" 
echo $resp >> Videoteca_1/F_cast
cp Videoteca_1/F_* Videoteca/Ficção_Cientifíca/"Harry Potter e a Pedra Filosofal"
rm Videoteca_1/F_*
else
 echo "Tem que extrair a diretoria Videoteca_1 que está em zip"
fi

DIR="$1"
echo "Digite o diretório que pretende saber o numero de arquivos e diretórios"
read DIR
# Caso nao seja digitado nenhum diretorio,
# Sera usado o diretorio corrente por padrao
if ! [ $DIR ]
then
# . é o diretório atual
DIR='.'
fi

NUMDIR=$(ls -lR "$DIR" | grep '^d' | wc -l)
NUMARQ=$(ls -lR "$DIR" | grep '^-' | wc -l)

echo "Existem $NUMDIR diretórios e $NUMARQ arquivos no diretório $DIR"

echo "Deseja Apagar a Videoteca_1 e Ficar só com a Videoteca Criada"
echo "1 - SIM"
echo "2 - NÂO"
sleep 1;
read RESP
if [[ "$RESP" == 1 ]];
then
#-r força a excluir a pasta mesmo que tenha subdiretórios
rm -r Videoteca_1
echo "Pasta Apagada"
fi
