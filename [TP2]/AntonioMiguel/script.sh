#!/bin/bash
#Variaveis sujeitas a alterações de siestema para sistema
#-------------MENU------------
echo "...................................Vidioteca IPCA...............................................";
echo "........................................MENU....................................................";
echo "Opção 1-> Listar categorias"
echo "Opção 2-> Ver filmes por categoria";
echo "Opção 3-> Cria nova Categoria";
echo "Opção 4-> Alterar nome de uma categoria";
echo "Opção 5-> Adicionar filme a uma categoria";
echo "Opção 6-> Apagar uma categoria";
echo "Opção 7-> Apagar filme";
echo "Indique a opção:";

read opcao;


if (($opcao==1)) #opção 1 - Listar Categorias
then
	echo -e "\n$(tput setaf 2)Foram encontradas as seguintes categorias: \n $(tput setaf 3)"
	cd categorias
	ls -d */

	echo "$(tput sgr 0)";	
	cd ../
	./script.sh	
elif  (($opcao==2)) #opção 2 Ver Filmes Por categoria
then
	echo -e "\n$(tput setaf 2)Foram encontradas as seguintes categorias: \n $(tput setaf 3)"
	cd categorias
	ls -d */
	echo "$(tput sgr 0)";	
	echo "Indique a categoria que pertende explorar:"
	read categoria
		cd $categoria
		
	echo -e "\n$(tput setaf 2)Foram encontradas os seguintes filmes na categoria que selecionou: \n $(tput setaf 3)"
	ls -d */
	echo "$(tput sgr 0)";	
	echo -e "\n $(tput setaf 2) Por favor indique o filme que pertende consultar: \n $(tput sgr 0)"
	read filme;
		if [[ -d "$filme" ]] 2>/dev/null
		i=0;
		then
	  		echo -e  "\n\n$(tput setaf 3)---------------------------------Elenco-------------------------------------$(tput setaf 0)";
		  	cat $filme/elenco.txt;
		  	
	  		echo -e  "\n\n$(tput setaf 3)------------------------------Classificaçao----------------------------------$(tput setaf 0)";
		  	cat $filme/classificacao.txt;
		  	
	  		echo -e  "\n\n$(tput setaf 3)---------------------------------Reviews-------------------------------------$(tput setaf 0)";
		  	cat $filme/reviews.txt;
		  	echo -e  "$(tput setaf 3)----------------------------------------------------------------------$(tput setaf 0)\n\n";
		else
		clear
		echo -e "$(tput setaf 1)$(tput bold)O filme que indicou ainda não existe. Pode Criar esse filme no MENU anterior.$(tput sgr 0)\n"
		cd ../../
		clear ./script.sh	
		fi


elif  (($opcao==3)) #opção 3 Criar Nova Categoria
then
      echo -e "Indique o nome da categoria a criar: ";
      read categoria;
      mkdir categorias/$categoria
      



elif  (($opcao==4)) #opção 4 Alterar nome de uma Categoria
then
	echo -e "\n$(tput setaf 2)Foram encontradas as seguintes categorias: \n $(tput setaf 3)"
	cd categorias
	ls -d */

	echo "$(tput sgr 0)";	
	cd ../
      echo -e "Indique o nome da categoria a renomear: ";
      read categoria;
      echo -e "Indique o novo nome da categoria: ";
      read categoria_n;
      
      mv categorias/$categoria categorias/$categoria_n
      ./script.sh


elif  (($opcao==5)) #opção 5 Adicionar filme a uma categoria
then
	echo -e "\n$(tput setaf 2)Foram encontradas as seguintes categorias: \n $(tput setaf 3)"
	cd categorias
	ls -d */

	echo "$(tput sgr 0)";	
	cd ../
      echo -e "Indique o nome da categoria que pertende adicionar o filme: ";
      read categoria;
      mkdir categorias/$categoria
      echo "Indique o nome do filme que pertende adicionar : ";
      read filme;
      mkdir categorias/$categoria/$filme
      echo "Indique o elenco do filme:";
      read elenco;
      ls
      
      echo "$elenco" > categorias/$categoria/$filme/elenco.txt
      
      echo "Indique a classificação do filme:";
      read calssificacao;
      echo "$calssificacao" > categorias/$categoria/$filme/classificacao.txt
      
      echo "Indique as reviews do filme:";
      read reviews;
      echo "$reviews" > categorias/$categoria/$filme/reviews.txt
      echo "Filme adicionando a $categoria com sucesso"; 
      ./script.sh


elif  (($opcao==6)) #opção 6 Apagar uma categoria
then

	echo -e "\n$(tput setaf 2)Foram encontradas as seguintes categorias: \n $(tput setaf 3)"
	cd categorias
	ls -d */

	echo "$(tput sgr 0)";	
	cd ../
	
	
	
	echo "Indique a categoria que pertende remover:";
	read categoria
	echo -e "$(tput setaf 1)Tem mesmo a certeza que quer remover esta categoria? $(tput sgr 0)\n Esta ação é irreversível.(S/N)"
	read confirm
		if  (($confirm=="S")) 
		then
		rm -r categorias/$categoria
		fi
      ./script.sh


elif  (($opcao==7)) #opção 7 Apagar um filme
then

	echo -e "\n$(tput setaf 2)Indique a categoria à qual o filme pertence: \n $(tput setaf 3)"
	cd categorias
	ls -d */

	echo "$(tput sgr 0)";	

	echo "Categoria:";
	read categoria
	
	cd $categoria
	echo "$(tput setaf 3)";
	ls -d */

	echo "$(tput sgr 0)";	
	cd ../../
	echo "Indique o filme que pertende remover:";
	read filme
	
	echo -e "$(tput setaf 1)Tem mesmo a certeza que quer remover este filme? $(tput sgr 0)\n Esta ação é irreversível.(S/N)"
	read confirm
		if  (($confirm=="S")) 
		then
		rm -r categorias/$categoria/$filme
		fi
      ./script.sh
fi
