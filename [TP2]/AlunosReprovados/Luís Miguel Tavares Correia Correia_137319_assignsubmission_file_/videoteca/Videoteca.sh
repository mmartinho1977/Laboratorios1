#!/bin/bash
#Criar diretorio 
mkdir ~/Desktop/Videoteca/
cd ~/Desktop/Videoteca
mkdir Most_Popular Top_Box_Office Comming_Soon Top20 Movies_by_Genre
cd ~/Desktop/Videoteca/Movies_by_Genre
mkdir Comedy Horror Romance Action Thriller Crime Animation

#Copiar ficheiros
cp ~/Desktop/Files/Top20/* ~/Desktop/Videoteca/Top20
cp ~/Desktop/Files/Comming_Soon/* ~/Desktop/Videoteca/Comming_Soon
cp ~/Desktop/Files/Thriller/* ~/Desktop/Videoteca/Movies_by_Genre/Thriller/
cp ~/Desktop/Files/Romance/* ~/Desktop/Videoteca/Movies_by_Genre/Romance/
cp ~/Desktop/Files/Horror/* ~/Desktop/Videoteca/Movies_by_Genre/Horror/
cp ~/Desktop/Files/Crime/* ~/Desktop/Videoteca/Movies_by_Genre/Crime/
cp ~/Desktop/Files/Comedy/* ~/Desktop/Videoteca/Movies_by_Genre/Comedy/
cp ~/Desktop/Files/Animation/* ~/Desktop/Videoteca/Movies_by_Genre/Animation/
cp ~/Desktop/Files/Action/* ~/Desktop/Videoteca/Movies_by_Genre/Action/
