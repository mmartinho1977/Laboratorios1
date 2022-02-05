Folder="./Videoteca"
Zip="./Videoteca.zip"
#Verifica se o ficheiro videoteca.zip não existe
if [ ! -f "$Zip" ]; then
#Emite mensagem que não existe
 echo "Não existe o ficheiro videoteca.zip."
 else
 #Caso exista verifica se a pasta Videoteca já existe
 #Caso não exista, faz o unzip
 	if [ ! -d "$Folder" ]; then
 		unzip -q $Zip
 	else
#Caso exista apaga-a e faz o unzip
 		rm -r $Folder
 		unzip -q $Zip
 	fi
fi
