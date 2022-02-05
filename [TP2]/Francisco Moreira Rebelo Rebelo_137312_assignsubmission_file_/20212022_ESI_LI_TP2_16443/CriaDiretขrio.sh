#! /bin/sh #executa a script da forma Bourne Shell

	#Script
echo "====DESCOMPACTAR FICHEIRO E CRIA DIRETÓRIO====" #Escreve na consola o conteúdo entre aspas

cd #Leva a script à raíz do disco

echo "Insira o caminho do ficheiro a descompactar com a extensão (Ex.: Desktop/Teste.zip)."
read caminhoZip #Lê o que o utilizador escreve na consola e aramzena numa variável

echo "Insira o caminho onde o ficheiro vai ser descompactado."
read caminhoDezip

unzip $caminhoZip -d $caminhoDezip #Descompacta o ficheiro indicado na primeira varíavel no local indicado na segunda variável

clear #Limpa a consola

cd

echo "Insira o caminho onde o diretório irá ser descompactado."
read caminhoDir

unzip $caminhoDezip/SCRIPTS/Dir.zip -d $caminhoDir

cd

cd $caminhoDir/Diretório #Leva a script ao caminho especificado na variável caminhoDir + Diretório

xargs -d '\n' mkdir -p -- < Géneros #Importa o conteudo de "Géneros" como argumentos e cria uma pasta para cada argumento importado

rm Géneros #Apaga o ficheiro

cd

mv $caminhoDir/Diretório/Loki.txt $caminhoDir/Diretório/Fantasy/Loki.txt #Copia o ficheiro especificdo na primeira vraiável para o caminho especificado na segunda variável
