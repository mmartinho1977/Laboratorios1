#! /bin/bash

################################################# MENU DE SELECÇÂO
menu () {

while true
do
	clear
	echo " "
	echo "              ************************************"
	echo "              *  $(tput bold)Bem vindo á Videoteca$(tput sgr0) - a18596  *" 
	echo "              ************************************"
	echo " "
	echo " "
	echo "Seleccione a opção pretendida "
	echo " "
	echo "Opção 1 - Comprimir Ficheiros."
	echo "Opção 2 - Descompactar Ficheiros."
	echo "Opção 0 - SAIR."
	echo " "

	read -p "Insira a sua opção: " OPCAO

	case $OPCAO in
		1) FUNCTION_ZIP;;
		2) FUNCTION_UNZIP;;
		0) clear;exit;;
		*) menu
	esac

done

}

################################################# FUNÇÂO PARA ZIPAR A VIDEOTECA
FUNCTION_ZIP () {

	zip -r VideotecaZIP.zip ./main

	echo ""
	echo "$(tput bold)Videoteca comprimida com sucesso!$(tput sgr0)"
	echo ""
	read -p "Precione ENTER para SAIR"
	exit

}

################################################# FUNÇÂO PARA DESCOMPRIMIR VIDEOTECA
FUNCTION_UNZIP () {

	unzip VideotecaZIP

	echo ""
	echo "$(tput bold)Videoteca descompactada com sucesso!$(tput sgr0)"
	echo ""

	FUNCTION_REDIRECT

}

################################################# FUNÇÂO DE REDIRECIONAMENTO 
FUNCTION_REDIRECT () {

	echo "Pressione (s) para prosseguir para a Videoteca,"
	read -p "Ou pressione (n) para sair!" LISTOPTION

	case $LISTOPTION in

		[n/N] ) clear;exit;;
		[s/S] ) FUNCTION_VIDEOTECA;;
			* ) FUNCTION_REDIRECT;;

	esac

}

FUNCTION_VIDEOTECA () {

	cd ./main
	./videoteca_script.sh

}

menu