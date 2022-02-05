#!/bin/sh

#Variaveis de controle para manipular o menu e os loops
NavUm="sim"
NavDois="nao"
Zipar="nao"

# Entrando na videoteca
cd Videoteca

# Criando Categorias para os filmes
mkdir Acao Ficcao Drama Terror

# Movendo os filmes previamente criados para cada categoria
mv ./Miranha ./Ficcao
mv ./Homem-de-ferro ./Ficcao
mv ./Venom ./Ficcao
mv ./F9 ./Acao
mv ./Shooter ./Acao
mv ./365-days ./Drama
mv ./Karate-kid ./Drama
mv ./Malignant ./Terror

# Criando um arquivo info concatenando todas as informcoes de cada filme de cada categoria
# Entrando em Ficcao
cd Ficcao 

cd Miranha
touch info.txt
cat Miranhasin.txt Miranhadir.txt Miranhastar.txt > info.txt
cd ..

cd Homem-de-ferro
touch info.txt
cat Homem-de-ferrosin.txt Homem-de-ferrodir.txt Homem-de-ferrostar.txt > info.txt
cd ..

cd Venom
touch info.txt
cat Venomsin.txt Venomdir.txt Venomstar.txt > info.txt
cd ..

#Voltando para a videoteca
cd .. 

# Entrando em Acao e criando um arquivo.txt com todas as informacoes de cada filme
cd Acao

cd F9
touch info.txt
cat F9sin.txt F9dir.txt F9star.txt > info.txt
cd ..

cd Shooter
touch info.txt
cat Shootersin.txt Shooterdir.txt Shooterstar.txt > info.txt
cd ..

#Voltando para a videoteca
cd .. 

# Entrando em Drama e criando um arquivo.txt com todas as informacoes de cada filme
cd Drama 

cd 365-days
touch info.txt
cat 365-dayssin.txt 365-daysdir.txt 365-daysstar.txt > info.txt
cd ..

cd Karate-kid
touch info.txt
cat Karate-kidsin.txt Karate-kiddir.txt Karate-kidstar.txt > info.txt
cd ..

#Voltando para a videoteca
cd .. 

# Entrando em Terror criando um arquivo.txt com todas as informacoes de cada filme
cd Terror

cd Malignant 
touch info.txt 
cat Malignantsin.txt Malignantdir.txt Malignantstar.txt > info.txt 
cd ..
cd ..

#Menu de selecao de categoria
while [ "$NavUm" != "sair" ]
do
    #Belezamento da script
    echo " "
    
    #Listando os generos
    ls
    
    #Belezamento da script
    echo " "

    #Solicitando uma categoria de filme para o usuario
    echo Digite uma das categoria: 

    #Atribuindo valor a variavel
    read NavUm

    #Entrando na categoria digitado pelo o usuario
    cd $NavUm

    #Mostrando os dois filmes daquele categoria de filme

    #Belezamento da script
    echo " "    
    echo Filmes dessa categoria:

    #Belezamento da script
    echo " "
    ls

    #Belezamento da script
    echo " "

    #Navegando na categoria e menu dos filmes
    while [ "$NavDoiss" != "sair" ]
    do
        #Solicitando nome do filme
        echo "Digite o nome do filme. Para sair digite ':q + enter'"
        echo " "

        #Atribuindo valor a variavel
        read NavDois

        #Entrando no filme
        cd $NavDois

        #Mostrando o info.txt do filme
        less "info.txt"

        cd ..
        
        echo " "

        echo "Caso não queira ver mais filmes, digite 'sair'. Se quiser ver outras categorias digite 'voltar'. E caso queira ver outro filme digite 'filme'"
    
        echo " "
        
        #Lendo o Input
        read NavDois
        
        #Condicional para sair dos filmes
        if [ "$NavDois" == "sair" ]    
        then
        NavUm="sair"         
        break
        fi        
        
        #Condicional para ver outra categoria
        if [ "$NavDois" == "voltar" ]
        then
        cd .. 
        break
        fi

    done
    
    #Condicional para sair do programa
    if [ "$NavUm" != "sair" ]
    then    
    echo "Digite 'voltar' para voltar a seção de generos. Caso deseje sair da videoteca, basta digitar 'sair'"
    echo " "

    read NavUm
    fi

done

exit


