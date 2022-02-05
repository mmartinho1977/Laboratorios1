#!/bin/bash
#Trabalho realizado por José Artur Matos e Filipe Carvalho

#Criar a pasta com nome que utilizador quiser dar(tecla c)
create_folder(){
    read -p "Please type the name of your movie library: " name
    mkdir $name
    clear
    echo "Sucess!! Library $name created!!"  
}
#imprime mensagem de sucesso

#funçao que permite criar pastas(tecla2)
create_subFolder(){
    read -p "What folder do you like to add to your database??" folder
    mkdir -p $folder 
    clear   
    echo "Sucess!!"
    pwd
}


show_folders(){ 
    pwd
}


delete_file(){
    read "File you like to delete: " $name
    rm -d $name
}

#premite 
go_back_folder(){
    cd ..
    pwd
}

#funçao que permite avançar nas diretorias(tecla 1)
go_foward_folder(){
    read -p "Lets go to folder: " subFolder    
    cd ./$subFolder
    pwd
}

#premite criar ficheiros
create_file(){
    read -p "Name of the list to create: " file
    touch $file

}

#Zipar o genero
zip_folder(){
    read -p "Which folder would you like to zip: " name
    gzip -k $name

}

#editar o ficheiro
acess_file_2_edit(){
   read -p "name of the list, (please insert Filename.Extension): " name
    nano $name
}

#ordenar por genero
sort_movies_by_genre(){
    read -p "Name of the list"
    sort -k2 $name.txt
}

#ordenar por nome
sort_movies_by_name(){
    read "Name of the list: "name
    sort -k1 $name.txt
}

#contar linhas que equivale a numero de filmes no ficheiro
how_many(){
    read -p "Name of the list: " name
    wc -l $name.txt
}

until [ "$escolha" = "0" ]; do
  
  
  echo "_______________________________________________________________________________"
  echo "|	C Create the library													|"
  echo "|	1 Move foward															|"
  echo "|	2 Create folder/directory												|"
  echo "|	3 Show folders															|"
  echo "|	4 Move backward															|"
  echo "|	5 Create a list of the movies											|"
  echo "|																			|"
  echo "|	6 Acess file to add more movies											|"
  echo "|	----Sort the list:	 													|"
  echo "|	G  by: genre															|"
  echo "|	N  by: name		 														|"
  echo "|	----Count the movies:													|"
  echo "|	press H 		 														|"
  echo "|	----Delete file just press D											|"
  echo "|	z zip the library														|"
  echo "|			0 Im OK for now, please EXIT!|									|"
  echo "|______________________________________________________________________________|"                                             
  echo -n "	>>  "
  read escolha
  echo ""
    
  case $escolha in
    c ) clear ; create_folder;;
    1 ) go_foward_folder;;
    2 ) clear ; create_subFolder;;
    3 ) clear; ls; show_folders;;  
    4 ) go_back_folder;;
    5 ) ls ; create_file;;
    6 ) acess_file_2_edit;;
    g ) sort_movies_by_genre;; 
    z ) ls; zip_folder ;;
    n ) clear; sort_movies_by_name;;
    h ) clear; how_many;; 
    d ) delete_file;;
    0 ) clear ; exit ;;

  esac
done