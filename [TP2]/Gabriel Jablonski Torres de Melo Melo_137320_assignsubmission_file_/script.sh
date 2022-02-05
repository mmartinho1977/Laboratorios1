#! /bin/sh

#Variaveis que serão usadas
InputGenero="sim"
InputFilme="nao"

#Criando a pasta
mkdir VideotecaTemp

#Copiando o .zip para a videoteca temporaria
cp 20212022_ESI-LI_TP2_21958.zip VideotecaTemp/

#Entrando na pasta com os ficheiros
cd VideotecaTemp/

#Deszipando o arquivo
unzip 20212022_ESI-LI_TP2_21958.zip

#Para não mostrar os arquivos que foram deszipados
clear

#Entrando na pasta
cd 20212022_ESI-LI_TP2_21958

#Criação da videoteca
mkdir videoteca

#Entra na diretoria videoteca
cd videoteca/

#Criação dos principais generos de filme
mkdir Ação Comédia Documentário Drama Terror

#Movendo os filmes para seus gêneros
mv ../Coringa/ ./Drama/
mv ../Gladiador/ ./Ação/ 
mv ../Halloween/ ./Terror/ 
mv ../Hereditário/ ./Terror/ 
mv ../Interestelar/ ./Drama/ 
mv ../Mulher-Maravilha/ ./Ação/ 
mv ../Ronaldo/ ./Documentário/ 
mv ../Scary-Movie/ ./Comédia/ 
mv ../Schumacher/ ./Documentário/ 
mv ../SuperBad/ ./Comédia/ 

#Criando o arquivo final do filme
#Coringa
cd Drama/Coringa/

#"Corrigindo arquivos"
mv CoringaSinopse.txt pse.txt
cp pse.txt  sinopse.txt
rm -r pse.txt
cat sinopse.txt CoringaClassificação.txt CoringaCast.txt CoringaReview.txt > CoringaInfo.txt

#Gladiador
cd ../../Ação/Gladiador/
cat GladiadorSinopse.txt classificação.txt GladiadorCast.txt resenha.txt > GladiadorInfo.txt

#Halloween
cd ../../Terror/Halloween/
cat HalloweenSinopse.txt HalloweenClassificação.txt HalloweenCast.txt HalloweenReview.txt > HalloweenInfo.txt

#Hereditário
cd ../../Terror/Hereditário/
cat sinopse.txt classificação.txt cast.txt review.txt > HereditárioInfo.txt

#Interestelar
cd ../../Drama/Interestelar/
cat sinopse.txt classificação.txt cast.txt review.txt > InterestelarInfo.txt;

#Mulher-Maravilha
cd ../../Ação/Mulher-Maravilha/
cat sinopse.txt classificação.txt cast.txt review.txt > Mulher-MaravilhaInfo.txt;

#Ronaldo
cd ../../Documentário/Ronaldo/
cat sinopse.txt classificação.txt cast.txt review.txt > RonaldoInfo.txt;

#Scary-Movie
cd ../../Comédia/Scary-Movie/
cat sinopse.txt classificação.txt cast.txt review.txt > Scary-MovieInfo.txt;

#Schumacher
cd ../../Documentário/Schumacher/
cat sinopse.txt classificação.txt cast.txt review.txt > SchumacherInfo.txt;

#SuperBad
cd ../../Comédia/SuperBad/
cat sinopse.txt classificação.txt cast.txt review.txt > SuperBadInfo.txt;

#Voltando para a área dos gêneros dos filmes
cd ../..

#Mostrando o que tem na videoteca
echo "Bem-vindo à videoteca Cinemania, não possuimos muitos filmes, mas talvez você encontre algum interessante"

#Loop da seleção de Gênero do filme
while [ "$InputGenero" != "sair" ]
do
    echo " "
    ls
    echo " "
    echo " "

    #Requisitando o Input por parte do usuário
    echo Digite o gênero de filme que você está a buscar: 

    #Lendo o Input
    read InputGenero

    #Entrando na pasta do gênero de filme requisitado pelo usuário
    cd $InputGenero/

    #Mostrando os dois filmes daquele gênero de filme
    echo " "    
    echo Hmmmmm, $InputGenero é uma escolha interessante... temos esses dois filmes:
    echo " "
    ls
    echo " "
    echo " "

    #Loop dos filmes
    while [ "$InputFilmes" != "sair" ]
    do
        #Requisitando o Input por parte do usuário
        echo "Digite o nome do filme para visualizar sua sinopse, classificação, cast e review. Lembre-se, para sair da leitura das informações sobre o filme, basta pressionar a letra 'q':"
        echo " "

        #Lendo o Input
        read InputFilme

        #Entrando na pasta do filme requisitado pelo usuário
        cd $InputFilme

        #Ajustando a variavel para ser igual o nome do aqquivo
        InputFilme+="Info"

        #Mostrando o conteúdo sobre o filme
        less "$InputFilme.txt"

        cd ..
        
        echo " "

        echo "Caso não queira ver mais filmes, digite 'sair'. Caso queira ver os outros gêneros digite 'genero'. E caso queira ver outro filme digite 'filme'"
    
        echo " "
        
        #Lendo o Input
        read InputFilme
        
        #Caso o usuario queira sair
        if [ "$InputFilme" == "sair" ]    
        then
        InputGenero="sair"         
        break
        fi        
        
        #Caso o usuário queira ver outro genero
        if [ "$InputFilme" == "genero" ]
        then
        cd .. 
        break
        fi

    done
    
    #Caso o usuario queira sair
    if [ "$InputGenero" != "sair" ]
    then    
    echo "Digite 'voltar' para voltar a seção de generos. Caso deseje sair da videoteca, basta digitar 'sair'"
    echo " "
    
    #Lendo o Input
    read InputGenero
    fi

done

#Voltando pra pasta onde a Videoteca temporaria se encontra
cd ../../../..

#Deletando a videoteca temporaria
rm -rf VideotecaTemp

#Saindo do programa
exit
