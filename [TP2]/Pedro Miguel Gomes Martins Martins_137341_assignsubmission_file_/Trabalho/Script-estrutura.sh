#!/bin/bash

#Criação da pasta filmes

cd ~/Desktop/

mkdir -p Filmes\ e\ Series/Filmes/Guerra/Saving\ Private\ Ryan
mkdir -p Filmes\ e\ Series/Filmes/Terror/Scary\ Movie

#Criação dos ficheiros na pasta filmes e inserção do conteúdo dos mesmos
cd ~/Desktop/Filmes\ e\ Series/Filmes/Guerra/Saving\ Private\ Ryan
touch Informação.txt
touch Cast.txt
touch Classificação.txt

echo "6 de Junho de 1944. Dia D. Nas praias da Normandia, poderosas forças militares confrontam-se numa batalha que vai decidir o curso da guerra. Soldados americanos, liderados pelo capitão Jonh Miller (Tom Hanks), cumprem uma arriscada missão para encontrar o soldado James Ryan (Matt Damon). Por que razão se arriscam as vidas de oito... para salvar um só homem?!" > ~/Desktop/Filmes\ e\ Series/Filmes/Guerra/Saving\ Private\ Ryan/Informação.txt
echo "Tom hanks - Capitain John H. Miller/ Edward Burns - Private Richard Reiben/ Tom Sizemore - Sergeant Michael Horvath/ Jeremy Davis - Corporal Timothy E. Upham/ Vin Diesel - Private Adrian Caparzo/ Adan Goldberg - Private Mellish" > ~/Desktop/Filmes\ e\ Series/Filmes/Guerra/Saving\ Private\ Ryan/Cast.txt
echo "Classificação do filme: 8,6/10" > ~/Desktop/Filmes\ e\ Series/Filmes/Guerra/Saving\ Private\ Ryan/Classificação.txt 

cd ~/Desktop/Filmes\ e\ Series/Filmes/Terror/Scary\ Movie
touch Informação.txt
touch Cast.txt
touch Classificação.txt

echo "Das mentes dos criadores da série da TV americana In living color surge o primeiro thriller-comédia, em que adolescentes apavorados fogem de maníacos assassinos são o pretexto para uma série de piadas envolvendo todos os recentes filme de terror, da série Pânico até O sexto sentido, passando ainda por outros grandes sucessos do cinema, como Matrix e Os suspeitos." > ~/Desktop/Filmes\ e\ Series/Filmes/Terror/Scary\ Movie/Informação.txt
echo "Anna Faris - Cindy / Jon Abrahams - Bobby / Marlon Wayans - Shorty / Carmen Electra - Drew / Dave Sheridan - The killer" > ~/Desktop/Filmes\ e\ Series/Filmes/Terror/Scary\ Movie/Cast.txt
echo "Classificação do filme: 6,2/10" > ~/Desktop/Filmes\ e\ Series/Filmes/Terror/Scary\ Movie/Classificação.txt

#Criação da pasta Series

cd ~/Desktop
mkdir -p Filmes\ e\ Series/Series/La\ Casa\ De\ Papel
mkdir -p Filmes\ e\ Series/Series/Prison\ Break
mkdir -p Filmes\ e\ Series/Series/Outer\ Banks

#Criação dos ficheiros na pasta series e inserção do conteúdo dos mesmos
cd ~/Desktop/Filmes\ e\ Series/Series/La\ Casa\ De\ Papel
touch Informação.txt 
touch Cast.txt
touch Classificação.txt

echo "Oito ladrões fazem reféns e fecham-se dentro do Royal Mint de Espanha, enquanto um génio do crime manipula a polícia para executar o seu plano." > ~/Desktop/Filmes\ e\ Series/Series/La\ Casa\ De\ Papel/Informação.txt
echo "Úrsula Corberó - Tokio/ Álvaro Morte - El Profesor/ Itziar Ituño - Raquel Murillo/ Pedro Alonso - Berlín/ Miguel Herrán - Rio/ Jaime Lorente - Denver/ Darko Peric - Helsink/ Alva Flores - Nairobi/ Rodrigo De La Serna - Palermo" > ~/Desktop/Filmes\ e\ Series/Series/La\ Casa\ De\ Papel/Cast.txt
echo "Classificação da série: 8,2/10" > ~/Desktop/Filmes\ e\ Series/Series/La\ Casa\ De\ Papel/Classificação.txt

cd ~/Desktop/Filmes\ e\ Series/Series/Prison\ Break
touch Informação.txt 
touch Cast.txt
touch Classificação.txt

echo "Após a prisão de Lincoln Burrows (Dominic Purcell), condenado por um crime que não cometeu, o engenheiro Michael Scofield (Wentworth Miller) bola um plano para tirar o irmão da cadeia. Enviado para Fox River ao lado de Lincoln, Michael começa a executar a sua estratégia, mas logo percebe que está no meio de uma perigosa conspiração. Para garantir a liberdade da sua família, ele precisará enganar a Dra. Sara Tancredi (Sarah Wayne Callies) e se associar a criminosos condenados." > ~/Desktop/Filmes\ e\ Series/Series/Prison\ Break/Informação.txt
echo "Dominic Purcell - Lincol Burrows/ Wentworth Miller - Michael Scofield/ Amaury Nolasco - Fernando Sucre/ Robert Knepper - Theodore Bagwell/ Sarah Callies - Sara Tancredi" > ~/Desktop/Filmes\ e\ Series/Series/Prison\ Break/Cast.txt
echo "Classificação da serie: 8,3/10" > ~/Desktop/Filmes\ e\ Series/Series/Prison\ Break/Classificação.txt

cd ~/Desktop/Filmes\ e\ Series/Series/Outer\ Banks
touch Informação.txt 
touch Cast.txt
touch Classificação.txt

echo "Outer Banks acompanha as aventuras de um grupo de amigos adolescentes que, enquanto tenta saber o paradeiro do pai desaparecido de um deles, encontra um mapa do tesouro e descobre um segredo há muito tempo enterrado." > ~/Desktop/Filmes\ e\ Series/Series/Outer\ Banks/Informação.txt
echo "Chase Stokes - John B/ Madelyn Cline - Sarah Cameron/ Madison Bailey - Kiara/ J.D. - Pope/ Rudy Pankow - JJ/ Austin North - Topper" > ~/Desktop/Filmes\ e\ Series/Series/Outer\ Banks/Cast.txt
echo "Classificação da serie: 7,6/10" > ~/Desktop/Filmes\ e\ Series/Series/Outer\ Banks/Classificação.txt




#Criação da estrutura da videoteca predefinida
echo "Criar estrutura predefinida? 1/0 (1=Sim;0=Não)"
read resposta

#Caso o utilizador deseje uma videoteca predefinida
if [ $resposta -eq 1 ]
then
cd ~/Desktop

#Verifica existência da mesma, caso já exista obtém uma resposta e falha, senão cria a videoteca
if [ -d "Videoteca Predefinida" ]
then
echo "A videoteca predefinida já foi criada anteriormente"
else
echo "Criando videoteca predefinida..."
sleep 1
mkdir Videoteca\ Predefinida
mv ~/Desktop/Filmes\ e\ Series/Filmes ~/Desktop/Videoteca\ Predefinida
mv ~/Desktop/Filmes\ e\ Series/Series ~/Desktop/Videoteca\ Predefinida
echo "Videoteca predefinida criada!"
fi
fi





#Caso o utilizador deseje uma videoteca costumizada
if [ $resposta -eq 0 ]
then
#Nome da videoteca e criação da mesma
cd ~/Desktop
echo "Insira o nome da videoteca que deseja criar:"
read videoteca

#Verifica se o nome da sua videoteca existe, se existir não o deixa criar
if [ -d "$videoteca" ] 
then
echo "O nome da sua videoteca já existe"
else

#Caso não exista, cria a mesma dando a opção do utilizador criar a videoteca com o nome que quiser
echo "Criando a sua videoteca..."
sleep 1
cd ~/Desktop
mkdir $videoteca
echo "A sua videoteca foi criada!"

#Conteúdo da videoteca costumizada
#echo "Vai desejar que tipo de conteúdo para a sua videoteca?"
echo "1 - filmes/series; 2- filmes"
read conteudo


if [ ! $conteudo -eq 1 ] && [ ! $conteudo -eq 2 ]
then
echo "Responsta inválida!"
cd ~/Desktop
rm -d $videoteca
fi

#Conteúdo com filmes e series
if [ $conteudo -eq 1 ]
then
cd ~/Desktop
cd $videoteca
#Move os filmes e as series da pasta criada inicialmente com todas as categorias e ficheiros
mv ~/Desktop/Filmes\ e\ Series/Filmes .
mv ~/Desktop/Filmes\ e\ Series/Series .
echo "Conteúdo criado!"
fi

#Conteúdo apenas com filmes
if [ $conteudo -eq 2 ]
then
cd ~/Desktop
cd $videoteca
#Move apenas os filmes da pasta criada inicialmente com todas as categorias e ficheiros
mv ~/Desktop/Filmes\ e\ Series/Filmes .
echo "Conteúdo criado!"
fi
fi
fi
