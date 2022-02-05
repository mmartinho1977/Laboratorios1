 
mkdir -p ./20212022_ESI_LI_11202 : ' cria uma pasta com o nome de 20202021_ESI_LI_11202 '
ls : ' lista o conteudo que esta dentro do diretorio '
cd 20212022_ESI_LI_11202/ : 'o comando cd serve para entar/ navegar no diretorio '
mkdir -p ./ Videoteca
ls
cd Videoteca/
mkdir -p ./Utilizadores
ls
cd Utilizadores/
mkdir -p ./Artur
mkdir -p ./Filipe
mkdir -p ./Marta
ls
cd Artur/ : ' Utilizador '
mkdir -p ./Terror
mkdir -p ./Thriller
mkdir -p ./Ação
mkdir -p ./Comedia
ls
cd Ação/
mkdir -p ./ Infinito
mkdir -p ./ "Aviso Vermelho"
ls
cd Aviso\ Vermelho/
> Resumo.txt
> Reviews.txt : 'este comando serve para criar ficheiros txt '
cd ../
ls
cd Infinito/
> Resumo.txt
cd ../../
ls
cd Comedia/
mkdir -p ./ Bean/ "Loiras à Força"
ls
cd Bean/
> Resumo.txt
> Classificação.txt
cd ../
ls
cd Loiras\ à\ Força/
> Resumo.txt
cd ../../
ls
cd Terror/
mkdir -p ./ Tempo/ "O Poço"/
ls
cd O\ Poço/
> Resumo.txt
cd ../../
ls
cd Thriller/
mkdir -p ./ "O Culpado"/ "A Mulher à Janela"
ls
cd A\ Mulher\ à\ Janela/
> Resumo.txt
cd ../../../
ls
cd Filipe : ' Utilizador '
mkdir -p ./ Ação/ Comedia
ls
cd Comedia/
mkdir -p ./ "A vida é Bela"
ls
cd A\ Vida\ é\ Bela/
> Classificação.txt
> Reviews.txt
cd ../../../
ls
rmdir Marta/ : 'Este comando é usado para apagar ficheiros/ diretorios '
cd ../../
sudo apt install zip unzip : 'Comando utilizado para instalar a função de zip e unzip '
zip -r video.zip Videoteca/ : 'comando utilizado para zipar a pasta Videoteca com o nome de video.zip '
ls
unzip video.zip : 'Comando utilizado para descompactar a pasta Video.zip '






