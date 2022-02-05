Folder="./Videoteca"
Zip="./Videoteca.zip"
#Verifica se a pasta videoteca.zip não existe
if [ ! -d "$Folder" ]; then
#Emite mensagem que não existe
 echo "Não existe a pasta videoteca. Por favor, corra o ficheiro scipt.sh"
 else
 #Caso exista verifica se o ficheiro Videoteca.zip já existe
 #Caso não exista, faz o zip
 	if [ ! -f "$Zip" ]; then
 		zip -q -r $Zip $Folder
 	else
#Caso exista apaga-o e faz o zip
 		rm $Zip
 		zip -q -r $Zip $Folder
 	fi
fi
