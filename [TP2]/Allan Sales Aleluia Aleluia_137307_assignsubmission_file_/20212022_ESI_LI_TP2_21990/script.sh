#! /bin/sh
#Variaveis que serão usadas
genero="a"
filme="b"
#Criando a pasta
mkdir filmes
#Copiando o .zip para filmes
cp diretorios.zip filmes/
#Entrando na pasta com os ficheiros
cd filmes/
#Deszipando o arquivo
unzip diretorios.zip
cd diretorios
mkdir videoteca
cd videoteca/
#Criação dos generos de filme
mkdir acao drama comedia ficcao infantil
#Movendo os filmes para seus generos
mv ../mebeforeyou/ ./drama/
mv ../tropadeelite/ ./acao/  
mv ../gentegrande/ ./comedia/ 
mv ../frozen/ ./infantil/
mv ../matrix/ ./ficcao/
#Criando o arquivo de informacoes dos filmes
cd drama/mebeforeyou/
cat castmebeforeyou.txt resumomebeforeyou.txt > mebeforeyouinfo.txt
cd ../../acao/tropadeelite/
cat resumotropadeelite.txt casttropadeelite.txt > tropadeeliteinfo.txt
cd ../../comedia/gentegrande/
cat resumogentegrande.txt castgentegrande.txt > gentegrandeinfo.txt;
cd ../../ficcao/matrix/
cat resumomatrix.txt castmatrix.txt > matrixinfo.txt;
cd ../../infantil/frozen/
cat resumofrozen.txt castfrozen.txt > frozeninfo.txt;
#Voltando para a area dos generos dos filmes
cd ../..
#Mostrando a videoteca
echo ".::Bem vindo a videoteca::."
#Loop da selecao de genero do filme
while [ "$genero" != "s" ]
do
    echo " "
    ls
    echo " "
    echo "Digite o genero de filme que você deseja: "

    read genero

    cd $genero/

    echo " "    
    echo "Temos este filme: "
    echo " "
    ls
    echo " "

    #Loop dos filmes
    while [ "$filme" != "s" ]
    do
        
        echo "Digite o nome do filme para visualizar mais informacoes."
        echo " "

       
        read filme

        #Entrando na pasta do filme requisitado pelo usuário
        cd $filme

        #Ajustando a variavel para ser igual o nome do arquivo
        filme+="info"

        #Mostrando o conteúdo sobre o filme
        less "$filme.txt"

        cd ..
        
        echo " "

        echo "Para ver outro filme digite: 'filme', para outro genero, digite 'g' e para sair digite: 's'."
        
        
        read filme
        
        #Caso digite sair
        if [ "$filme" == "s" ]    
        then
       	genero="s"         
        break
        fi        
        
        #Caso digite genero
        if [ "$filme" == "genero" ]
        then
        cd .. 
        break
        fi

    done
    
    #Caso o usuario queira sair
    if [ "$genero" != "s" ]
    then    
    echo "Para sair da videoteca, basta digitar 's'. Se não digite outra coisa"
    echo " "
    read genero
    fi
done
exit
