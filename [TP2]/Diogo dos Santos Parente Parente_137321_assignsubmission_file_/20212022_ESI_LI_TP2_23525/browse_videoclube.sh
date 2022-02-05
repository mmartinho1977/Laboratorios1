#!/bin/bash

#se não estiver a correr a partir da pasta correta tenta entrar na pasta
curDir=${PWD##*/}
if [ "$curDir" != "videoclube" ]; then
    cd videoclube
fi

#get dirs (pretty name)
#a=$(ls -d */)
#echo ${a%%/}

#loop até utilisador decidir sair
while true
do
    #usado para verificar se estamos no diretorio de um filme
    file="avaliacao.txt"
    #diretorio atual
    curDir=${PWD##*/}

    #se estiver num diretorio de filme
    if [ -e "$file" ]
    then
        echo "Ver:"
        echo "[1] Avaliação"
        echo "[2] Criadores"
        echo "[3] Elenco Principal"
        echo "[4] Resumo"
        echo "[b] Voltar"
        echo "[0] Sair"
        echo ""
        echo "Escolha a informação pretendida:"
        echo ""

        #ler input
        read opt4

        echo ""
        #imprimir ficheiro escolhido
        if [ $opt4 = "0" ]; then
            exit
        elif [ $opt4 = "1" ]; then
            cat avaliacao.txt
        elif [ $opt4 = "2" ]; then
            cat criadores.txt
        elif [ $opt4 = "3" ]; then
            cat elenco_principal.txt
        elif [ $opt4 = "4" ]; then
            cat resumo.txt
        elif [ $opt4 = "b" ]; then
            cd ..
        fi

        echo ""
       

    #se estiver no estado inicial	
    elif [ "$curDir" = "videoclube" ]; then

        echo "Categorias"
        echo "[1] Animação"
        echo "[2] Aventura"
        echo "[3] Comedia"
        echo "[4] Romance"
        echo "[5] Todos"
        echo "[0] Sair"
        echo ""
        echo "Escolha a categoria pretendida:"
        echo ""

        read opt2
        
        #entrar na pasta da categoria pretendida
        if [ $opt2 = "0" ]; then
            exit
        elif [ $opt2 = "1" ]; then
            cd animacao
        elif [ $opt2 = "2" ]; then
            cd aventura
        elif [ $opt2 = "3" ]; then
            cd comedia
        elif [ $opt2 = "4" ]; then
            cd romance
        elif [ $opt2 = "5" ]; then
            cd todos
        fi
        echo ""

    #se estiver num diretorio de categoria    
    else
        
        echo "Filmes"
        i=1
        #ver filmes no diretorio e imprimilos para o utilisador
        for f in $(ls -d */)
        do
            echo "[${i}] ${f%%/}"
            ((i=i+1))
        done
        echo "[b] Voltar"
        echo "[0] Sair"
        echo ""
        echo "Escolha o filme pretendido:"
        echo ""
        
        #receber input
        read opt3
     
        echo ""
        
        i=1
        #voltar atras
        if [ $opt3 = "b" ]; then
            cd ..    
        #sair
        elif [ $opt3 = "0" ]; then
            exit
        else
            #percorrer filmes até chegar ao pretendido e entrar no mesmo
            for f in $(ls -d */)
            do
                if [ $i = $opt3 ]; then
                    cd $f
                fi
                ((i=i+1))
            done
        fi
    fi

done
