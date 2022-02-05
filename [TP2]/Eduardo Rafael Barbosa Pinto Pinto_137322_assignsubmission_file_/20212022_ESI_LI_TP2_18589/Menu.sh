#!/bin/bash
clear
#Menu de Escolha
function main {
	currentDir=$(command pwd)
    echo "################################################################################"
    echo                    "Sistema de gestao de Vidioteca para Linux!"                                
    echo "################################################################################"
	#selecionador de opcoes
	PS3="Enter a choice: "
		select ch in "Comprimir" "Descomprimir" "Listar Filmes" "Listar Comedia" "Listar Drama" "Listar Fantasia" "Listar Horror" "Listar Sci-Fi" "Adicionar Comedia" "Adicionar Drama" "Adicionar Fantasia" "Adicionar Horror" "Adicionar Sci-Fi" "Editar Comedia" "Editar Drama" "Editar Fantasia" "Editar Horror" "Editar Sci-Fi" "Procurar Palavra" "Listar Generos" Cancelar
		do
			case $ch in 
			"Comprimir")
			comprimir
			;;
			"Descomprimir")
			descomprimir
			;;
			"Listar Filmes")
			listarFilmes
			;;
			"Listar Comedia")
			listarComedy
			;;
			"Listar Drama")
			listarDrama
			;;
			"Listar Fantasia")
			listarFantasia
			;;
			"Listar Horror")
			listarHorror
			;;
			"Listar Sci-Fi")
			listarScifi
			;;
			"Adicionar Comedia")
			addComedy
			;;
			"Adicionar Drama")
			addDrama
			;;
			"Adicionar Fantasia")
			addFantasy
			;;
			"Adicionar Horror")
			addHorror
			;;
			"Adicionar Sci-Fi")
			addScifi
			;;
			"Editar Comedia")
			editComedy
			;;
			"Editar Drama")
			editDrama
			;;
			"Editar Fantasia")
			editFantasy
			;;
			"Editar Horror")
			editHorror
			;;
			"Editar Sci-Fi")
			editScifi
			;;
			"Procurar Palavra")
			findWord
			;;
			"Listar Generos")
			showGenre
			;;
			Cancelar)
			break
			;;
			*) echo invalid option;;
		esac
	done
}

#Comprime os Ficheiros

function comprimir {
	#cria uma linha em branco
	echo
	echo
	#escreve o conteudo em frente a "echo"
	echo ">>>>>   A Comprimir   <<<<<"
	#vai para um diretorio com o comando "pushd"
	pushd $currentDir
	#comprime uma pasta num ficheiro .zip
	tar -cf videoteca.tar Videoteca
	pushd ~/Documents/20212022_ESI_LI_TP2_18589
	#remove um diretorio e ficheios e subpastas nesse diretorio
	rm -rf Videoteca
	echo
	echo
	echo "Done"
	echo
	echo
	main
}

#Descomprime os Ficheiros

function descomprimir {
	echo
	echo
	echo " "
	echo " "
	echo ">>>>>   A Descomprimir   <<<<<"
	pushd $currentDir
	#descomprime ficheiro .zip para um diretorio especificado
	tar -xf  ~/Documents/20212022_ESI_LI_TP2_18589/videoteca.tar -C ~/Documents/20212022_ESI_LI_TP2_18589
	#remove um ficheiro
	rm videoteca.tar
	echo
	echo
	echo "Done"
	echo " "
	echo " "
	echo
	echo
	#Chamada da função main (function main)
	main
}

#Lista todos os filmes da videoteca e as informações relacionadas

function listarFilmes {
	echo
	echo
	echo " "
	echo " "
	echo ">>>>>   A listar   <<<<<"
	#"cat" lê o conteudo de um ficheiro
	cat $currentDir/Videoteca/Comedy/comedy.movies
	cat $currentDir/Videoteca/Drama/drama.movies
	cat $currentDir/Videoteca/Fantasy/fantasy.movies
	cat $currentDir/Videoteca/Horror/horror.movies
	cat $currentDir/Videoteca/Sci-Fi/scifi.movies
	echo
	echo
	echo "Done"
	echo " "
	echo " "
	echo
	echo
	main
}

#lista os filmes de comedia

function listarComedy {
	echo
	echo
	echo " "
	echo " "
	echo ">>>>>   A listar   <<<<<"
	cat $currentDir/Videoteca/Comedy/comedy.movies
	echo
	echo
	echo "Done"
	echo " "
	echo " "
	echo
	echo
	main
}

#lista os filmes de drama

function listarDrama {
	echo
	echo
	echo " "
	echo " "
	echo ">>>>>   A listar   <<<<<"
	cat $currentDir/Videoteca/Drama/drama.movies
	echo
	echo
	echo "Done"
	echo " "
	echo " "
	echo
	echo
	main
}
#lista os filmes de fantasia

function listarFantasy {
	echo
	echo
	echo " "
	echo " "
	echo ">>>>>   A listar   <<<<<"
	cat $currentDir/Videoteca/Fantasy/fantasy.movies
	echo
	echo
	echo "Done"
	echo " "
	echo " "
	echo
	echo
	main
}

#lista os filmes de terror

function listarHorror {
	echo
	echo
	echo " "
	echo " "
	echo ">>>>>   A listar   <<<<<"
	cat $currentDir/Videoteca/Horror/horror.movies
	echo
	echo
	echo "Done"
	echo " "
	echo " "
	echo
	echo
    main
}

#lista os filmes de Sci-Fi

function listarScifi {
	echo
	echo
	echo " "
	echo " "
	echo ">>>>>   A listar   <<<<<"
	cat $currentDir/Videoteca/Sci-Fi/scifi.movies
	echo
	echo
	echo "Done"
	echo " "
	echo " "
	echo
	echo
    main
}

#Adiciona novos filmes de comedia

function addComedy {
	echo
	echo
	echo " "
	echo " "
	#variavel com uma string de um diretorio
	locationAlpha= ""
    	#"echo" usado para escrever linha em branco sem reescrever ficheiro
	echo >> $currentDir/Videoteca/Comedy/comedy.movies
        #"read" guarda em memoria o que foi digitado
	read -p "Titulo: " titulo
	echo "Adicionando titulo"
	#"echo" usado para escrever no ficheiro sem reescrever o seu conteudo
    	echo "$titulo"\ >> $currentDir/Videoteca/Comedy/comedy.movies
    
	read -p "Diretor: " diretor
	echo "Adicionando diretor"
    	echo Director: "$diretor"\ >> $currentDir/Videoteca/Comedy/comedy.movies
    
	read -p "Estrelas/Cast: " stars
	echo "Adicionando Cast"
	echo Stars: "$stars"\ >> $currentDir/Videoteca/Comedy/comedy.movies
    
	read -p "Ano: " ano
	echo "Adicionando Ano"
	echo Year: "$ano"\ >> $currentDir/Videoteca/Comedy/comedy.movies
    
	echo Genre: Comedy >> $currentDir/Videoteca/Comedy/comedy.movies
    
	read -p "Resumo: " syno
	echo "Adicionando resumo"
	echo Synopsis: "$syno"\ >> $currentDir/Videoteca/Comedy/comedy.movies
	echo
	echo "Done"
	echo " "
	echo " "
	echo
	echo
	main
}

#Adiciona novos filmes de drama

function addDrama {
	echo
	echo
	echo " "
	echo " "
    
	echo >> $currentDir/Videoteca/Drama/drama.movies
    
	read -p "Titulo: " titulo
	echo "Adicionando titulo"
    	echo "$titulo"\ >> v/Videoteca/Drama/drama.movies
    
	read -p "Diretor: " diretor
	echo "Adicionando diretor"
    	echo Director: "$diretor"\ >> $currentDir/Videoteca/Drama/drama.movies
    
	read -p "Estrelas/Cast: " stars
	echo "Adicionando Cast"
	echo Stars: "$stars"\ >> $currentDir/Videoteca/Drama/drama.movies
    
	read -p "Ano: " ano
	echo "Adicionando Ano"
	echo Year: "$ano"\ >> $currentDir/Videoteca/Drama/drama.movies
    
	echo Genre: Drama >> $currentDir/Videoteca/Drama/drama.movies
    
	read -p "Resumo: " syno
	echo "Adicionando resumo"
	echo Synopsis: "$syno"\ >> $currentDir/Videoteca/Drama/drama.movies
	echo
	echo "Done"
	echo " "
	echo " "
	echo
	echo
	main
}

#Adiciona novos filmes de fantasia

function addFantasy {
	echo
	echo
	echo " "
	echo " "
    
	echo >> $currentDir/Videoteca/Fantasy/fantasy.movies
    
	read -p "Titulo: " titulo
	echo "Adicionando titulo"
    	echo "$titulo"\ >> $currentDir/Videoteca/Fantasy/fantasy.movies
    
	read -p "Diretor: " diretor
	echo "Adicionando diretor"
    	echo Director: "$diretor"\ >> $currentDir/Videoteca/Fantasy/fantasy.movies
    
	read -p "Estrelas/Cast: " stars
	echo "Adicionando Cast"
	echo Stars: "$stars"\ >> $currentDir/Videoteca/Fantasy/fantasy.movies
    
	read -p "Ano: " ano
	echo "Adicionando Ano"
	echo Year: "$ano"\ >> $currentDir/Videoteca/Fantasy/fantasy.movies
    
	echo Genre: Fantasy >> $currentDir/Videoteca/Fantasy/fantasy.movies
    
	read -p "Resumo: " syno
	echo "Adicionando resumo"
	echo Synopsis: "$syno"\ >> $currentDir/Videoteca/Fantasy/fantasy.movies
	echo
	echo "Done"
	echo " "
	echo " "
	echo
	echo
	main
}

#Adiciona novos filmes de terror

function addHorror {
	echo
	echo
	echo " "
	echo " "
    
	echo >> $currentDir/Videoteca/Horror/horror.movies
    
	read -p "Titulo: " titulo
	echo "Adicionando titulo"
    	echo "$titulo"\ >> $currentDir/Videoteca/Horror/horror.movies
    
	read -p "Diretor: " diretor
	echo "Adicionando diretor"
    	echo Director: "$diretor"\ >> $currentDir/Videoteca/Horror/horror.movies
    
	read -p "Estrelas/Cast: " stars
	echo "Adicionando Cast"
	echo Stars: "$stars"\ >> $currentDir/Videoteca/Horror/horror.movies
    
	read -p "Ano: " ano
	echo "Adicionando Ano"
	echo Year: "$ano"\ >> $currentDir/Videoteca/Horror/horror.movies
    
	echo Genre: Horror >> $currentDir/Videoteca/Horror/horror.movies
    
	read -p "Resumo: " syno
	echo "Adicionando resumo"
	echo Synopsis: "$syno"\ >> $currentDir/Videoteca/Horror/horror.movies
	echo
	echo "Done"
	echo " "
	echo " "
	echo
	echo
	main
}

#Adiciona novos filmes de sci-fi

function addScifi {
	echo
	echo
	echo " "
	echo " "
    
	echo -e "\n" >> $currentDir/Videoteca/Sci-Fi/scifi.movies
    
	read -p "Titulo: " titulo
	echo "Adicionando titulo"
    	echo "$titulo"\ >> $currentDir/Videoteca/Sci-Fi/scifi.movies
    
	read -p "Diretor: " diretor
	echo "Adicionando diretor"
    	echo Director: "$diretor"\ >> $currentDir/Videoteca/Sci-Fi/scifi.movies
    
	read -p "Estrelas/Cast: " stars
	echo "Adicionando Cast"
	echo Stars: "$stars"\ >> $currentDir/Videoteca/Sci-Fi/scifi.movies
    
	read -p "Ano: " ano
	echo "Adicionando Ano"
	echo Year: "$ano"\ >> $currentDir/Videoteca/Sci-Fi/scifi.movies
    
	echo Genre: Sci-Fi >> $currentDir/Videoteca/Sci-Fi/scifi.movies
    
	read -p "Resumo: " syno
	echo "Adicionando resumo"
	echo Synopsis: "$syno"\ >> $currentDir/Videoteca/Sci-Fi/scifi.movies
	echo
	echo "Done"
	echo " "
	echo " "
	echo
	echo
	main
}

#permite editar o ficheiro de filmes de comedia

function editComedy {
	echo
	echo
	#chamada do programa "ano" para editar livremente um ficheiro
	nano $currentDir/Videoteca/Comedy/comedy.movies
	echo
	echo
	echo "Done"
	echo
	echo
	main
}

#permite editar o ficheiro de filmes de drama

function editDrama {
	echo
	echo
	nano $currentDir/Videoteca/Drama/drama.movies
	echo
	echo
	echo "Done"
	echo
	echo
    main
}

#permite editar o ficheiro de filmes de fantasia

function editFantasy {
	echo
	echo
	nano $currentDir/Videoteca/Fantasy/fantasy.movies
	echo
	echo
	echo "Done"
	echo
	echo
    main
}

#permite editar o ficheiro de filmes de terror

function editHorror {
	echo
	echo
	nano $currentDir/Videoteca/Horror/horror.movies
	echo
	echo
	echo "Done"
	echo
	echo
    main
}

#permite editar o ficheiro de filmes de scifi

function editScifi {
	echo
	echo
	nano $currentDir/Videoteca/Sci-Fi/scifi.movies
	echo
	echo
	echo "Done"
	echo
	echo
    main
}

#procura palavras especificas em todos os ficheiros

function findWord {
	echo
	echo
	read -p "Digite a palavra que procura: " word
	echo "Procurando '$word'"
	#"grep" usado para procurar palavras especificas em todos os ficheiros de filmes
	grep -iH "$word" $currentDir/Videoteca/Comedy/comedy.movies ~/Documents/20212022_ESI_LI_TP2_18589/Videoteca/Drama/drama.movies ~/Documents/20212022_ESI_LI_TP2_18589/Videoteca/Fantasy/fantasy.movies ~/Documents/20212022_ESI_LI_TP2_18589/Videoteca/Horror/horror.movies ~/Documents/20212022_ESI_LI_TP2_18589/Videoteca/Sci-Fi/scifi.movies
	echo
	echo
	echo "Done"
	echo
	echo
    main
}

#mostra os generos existentes

function showGenre {
	echo
	echo
	#lista o conteudo de diretorios
	ls -1 -IScripts $currentDir/Videoteca
	echo
	echo
	echo "Done"
	echo
	echo
    main
}

#adiciona um genero novo

function addGenre {
	echo

	read -p "Digite o genero que quer criar: " word
	echo "Adicionando '$word'"
	#cria um diretorio novo
	mkdir $currentDir/Videoteca/$word
	#"touch" usado para criar um ficheiro de texto
	touch $currentDir/Videoteca/$word/$word.movies
	echo
	echo
	echo "Done"
	echo
	echo
    main
}

#remove uma genero novo

function rmGenre {
	echo
	echo
	pushd $currentDir/Videoteca
	read -p "Digite o genero que quer eleminar: " word
	echo "Apagando '$word'"
	rm -rf $word
	echo
	echo
	echo "Done"
	echo
	echo
    main
}

main "$@"
