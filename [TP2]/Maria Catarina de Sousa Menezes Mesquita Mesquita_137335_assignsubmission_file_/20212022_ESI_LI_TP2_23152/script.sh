cd ~/Documents #entrar na diretoria Documents
mkdir Videoteca #Criar a pasta Videoteca
cd Videoteca #entrar na pasta Videoteca
sleep 5 #Pausa de 5 segundos
mkdir Ação #criar a pasta com a categoria Ação
cd Ação #entrar na pasta Ação 
sleep 5
mkdir Filme1 #Criar a pasta Filme1
cd Filme1/ #entrar na pasta Filme1
sleep 5
touch resumo.txt cast.txt reviews.txt classificação.txt #Criar ficheiros para cada fime
sleep 5
cd .. #Ir para a pasta Ação
cp -r Filme1 Filme2 #Copiar a pasta Filme1 para uma nova pasta chamada Filme2
cp -r Filme1 Filme3 #Copiar a pasta Filme1 para uma nova pasta chamada Filme3
sleep 5
cd .. #Ir para a pasta Videoteca
cp -r Ação Fantasia #Copiar a pasta Ação para uma nova pasta chamada Fantasia
cp -r Ação Romance #Copiar a pasta Ação para uma nova pasta chamada Romance
cp -r Ação História #Copiar a pasta Ação para uma nova pasta chamada História
cp -r Ação Disney #Copiar a pasta Ação para uma nova pasta chamada Disney
sleep 5

cd Ação/ #Entrar na pasta Ação
mv Filme1 "A Roda do Tempo" #Renomear o Filme1 para A Roda do Tempo
mv Filme2 "O Último Duelo" #Renomear o Filme2 para O Último Duelo
mv Filme3 "Duna" #Renomear o Filme3 para Duna

cd ../Fantasia #Entrar na pasta Fantasia
mv Filme1 "Harry Potter" #Renomear o Filme1 para HarryPotter
mv Filme2 Hobbit #Renomear o Filme2 para Hobbit
mv Filme3 "Senhor Dos Anéis" #Renomear o Filme3 para SenhorDosAnéis

cd ../Romance #Entrar na pasta Romance
mv Filme1 "Os Miseráveis" #Renomear o Filme1 para OsMiseráveis
mv Filme2 "Orgulho e Preconceito" #Renomear o Filme2 para OrgulhoPreconceito
mv Filme3 "The Shape Of Water" #Renomear o Filme3 para TheShapeOfWater

cd ../História #Entrar na pasta História
mv Filme1 "Resgate do Soldado Ryan" #Renomear o Filme1 para ResgateSoldadoRyan
mv Filme2 Vikings #Renomear o Filme2 para Vikings
mv Filme3 Dunkirk #Renomear o Filme3 para Dunkiek

cd ../Disney #Entrar na pasta Disney
mv Filme1 Mulan #Renomear o Filme1 para ResgateSoldadoRyan
mv Filme2 Pocahontas #Renomear o Filme2 para Pocahontas
mv Filme3 Tarzan #Renomear o Filme3 para Tarzan
sleep 5
cd ../Ação/"A Roda do Tempo"/ #Entrar na pasta do filme A Roda do Tempo
echo "Set in a high fantasy world where magic exists, but only some can access it, a woman named Moiraine crosses paths with five young men and woman. This sparks a dangerous, worl-spanning journey. Based on the book series by Robert Jordan." > resumo.txt #Escrever o resumo do filme no ficheiro resume.txt
echo "Stars: Rosamund Pike, Daniel Henney, Madeleine Madden, Zoe Robins" > cast.txt #Escrever o cast do filme no ficheiro cast.txt
echo "7,5" > classificação.txt #Escrever a classificação do filme no ficheiro classificação.txt
echo "Beautiful scenery and fantastical characters; It's Awesome, You don't want to miss this one" > reviews.txt #Escrever reviews do filme no ficheiro reviews.txt

cd ../"O Último Duelo"/ #Entrar na pasta do filme O Último Duelo
echo "King Charles VI declares that Knight Jean de Carrouges settle his dispute with his squire by challenging him to a duel." > resumo.txt #Escrever o resumo do filme no ficheiro resume.txt
echo "Stars: Matt Damon, Adam Driver, Jodie Comer, Harriet Walter" > cast.txt #Escrever o cast do filme no ficheiro cast.txt
echo "7,5" > classificação.txt #Escrever a classificação do filme no ficheiro classificação.txt
echo "Realistic; Weel acted, with an great premise, but too long and a bit pretentious." > reviews.txt #Escrever reviews do filme no ficheiro reviews.txt

cd ../"Duna"/ #Entrar na pasta do filme Duna
echo "Feature adaptation of Frank Herbert's science fiction novel about the son of a noble family entrused with the protection of the most valuable asset and most vital element in the galaxy." > resumo.txt #Escrever o resumo do filme no ficheiro resume.txt
echo "Stars: Timothée Chalamet, Rebecca Ferguson, Zendaya, Oscar Isaac" > cast.txt #Escrever o cast do filme no ficheiro cast.txt
echo "8,2" > classificação.txt #Escrever a classificação do filme no ficheiro classificação.txt
echo "Inspiring, with a good beggining." > reviews.txt #Escrever reviews do filme no ficheiro reviews.txt

sleep 5
cd ../../Romance/"Os Miseráveis" #Entrar na pasta da Categoria Romance
rm -f cast.txt #Remover o ficheiro cast.txt
cd ../../História #Entrar na pasta da Categoria História
rm -rf Vikings/ #Remover a pasta Vikings
sleep 5
cd ../Ação/"A Roda do Tempo" #Entrar na pasta do filme de Ação "A Roda do Tempo"
echo "A Roda do Tempo"
more classificação.txt
tail reviews.txt
head cast.txt
cd ../../História/
mv Dunkirk/ ~/Documents/Videoteca/Ação/










