#!/bin/bash

# Descompactar a pasta VideoLibrary
unzip -q VideoLibrary.zip

# Ver a organização atual da videoteca
cd VideoLibrary
tree

cd ../..

# Definição de variáveis com diretoria da pasta Type e da pasta Movies
dirtv=Desktop/VideoLibrary/TV_Shows/Type
dirtm=Desktop/VideoLibrary/Movies

# Remover uma pasta
cd $dirtv
rm -r Christopher_Nolan

# Alterar palavra num ficheiro (HUNTER para hunters)
cd Drama
sed -i 's/HUNTER/hunters/' Supernatural.txt
cd ..

# Eliminar ficheiro repetido
cd Animation
rm Big_Mouth_copy.txt
cd ..

# Copiar um ficheiro para outra pasta
cd Crime
cp Peaky_Blinders.txt ~/$dirtv/Drama

# Mover uma pasta para outra diretoria e sair
cd ../..
mv Director ~/$dirtm

cd ~

# Entrar na pasta Director
cd $dirtm/Director

# Alterar o nome de uma pasta
mv Davide_Yates/ David_Yates

# Alterar o nome de um ficheiro
cd Steven_Spielberg/
mv Bridge_Spies.txt  Bridge_of_Spies.txt

# Concatenar o conteúdo de 3 ficheiros num só. A ordem em que a informação é colocada corresponde à ordem em que os ficheiros são identificados
cat The_Post_Year.txt The_Post_TRS.txt The_Post_Rating.txt > The_Post.txt

# Eliminar ficheiros
rm The_Post_Year.txt The_Post_TRS.txt The_Post_Rating.txt

# Mover ficheiro para outra diretoria e alterar o nome do ficheiro
mv West.txt ~/$dirtv/Drama/Westworld.txt
cd ..

# Mover ficheiro para uma pasta da mesma diretoria
mv Christopher_Nolan/Fantastic_Beasts2.txt David_Yates

# Consultar o conteúdo de um ficheiro (pode-se verificar que falta informação)
cd Christopher_Nolan/
cat Inception.txt

# Copiar informação de um ficheiro para outro (adicionar)
cat Inception2.txt >> Inception.txt

# Eliminar ficheiro
rm Inception2.txt

# Colocar toda a informação de um ficheiro em maiúsculas
cat Inception.txt | tr a-z A-Z > InceptionM.txt

# Trocar a palavra "Stars" por "Cast" em todos os ficheiros da pasta Christopher_Nolan
sed -i 's/Stars/Cast/g' *.txt

cd ~

# Ver estrutura de organização da VideoLibrary no terminal
cd $dirtm
cd ..
tree

