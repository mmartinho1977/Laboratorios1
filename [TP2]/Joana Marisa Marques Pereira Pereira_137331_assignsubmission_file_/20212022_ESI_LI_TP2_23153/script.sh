#!/bin/bash

ls #verificar as pastas existentes na diretoria
mkdir Videoteca #criação da diretoria Videoteca
sleep 5 #aguarda 5 segundos para passar ao passo seguinte e ser possível visualizar a execução do mesmo
cd Videoteca #entrar na diretoria Videoteca
mkdir Ação Aventura Comédia Drama Mistério Romance #criação de 6 categorias de filmes dentro da diretoria Videoteca
sleep 5
ls #verificar se as pastas foram corretamente criadas dentro da diretoria

cd Ação #entrar na pasta ação
sleep 5 
mkdir "filme 1" #criação da pasta filme 1
cd "filme 1" #entrar na pasta filme 1
touch Resumo.txt Classificação.txt #criação de dois ficheiros (resumo e classificação do filme) dentro da pasta "filme 1"

cd .. #voltar à pasta Ação
cp -r filme\ 1/ "filme 2" #realização de uma cópia da pasta filme 1, designando-se a cópia de filme 2
mv "filme 1" "Homem-Aranha: Sem volta a casa" #alteração do nome da pasta de filme 1 para "Homem-Aranha: Sem volta a casa"
mv "filme 2" "Hawkeye - Gavião Arqueiro" #alteração do nome da pasta filme 2 para "Hawkeye - Gavião Arqueiro"

cd "Homem-Aranha: Sem volta a casa" #entrar na pasta do filme
echo Em Homem-Aranha: Sem Volta para Casa, Peter Parker precisará lidar com as consequências da sua identidade como o herói mais querido do mundo após ter sido revelada pela reportagem do Clarim Diário, com uma gravação feita por Mysterio no filme anterior. Incapaz de separar sua vida normal das aventuras de ser um super-herói, além de ter sua reputação arruinada por acharem que foi ele quem matou Mysterio e pondo em risco seus entes mais queridos, Parker pede ao Doutor Estranho para que todos esqueçam sua verdadeira identidade. Entretanto, o feitiço não sai como planejado e a situação torna-se ainda mais perigosa quando vilões de outras versões de Homem-Aranha de outro universos acabam indo para seu mundo. Agora, Peter não só deter vilões de suas outras versões e fazer com que eles voltem para seu universo original, mas também aprender que, com grandes poderes vem grandes responsabilidades como herói. >> Resumo.txt #O resumo do filme será inserido no ficheiro "Resumo.txt"
echo Classificação 9.0 numa escala de 0 a 10, segundo o IMDB >> Classificação.txt #É escrito no ficheiro "Classificação.txt" qual a Classificação do filme segundo o IMDB numa escala de 0 a 10 

cd .. #voltar à pasta ação 
cd "Hawkeye - Gavião Arqueiro" #aceder à pasta do respetivo filme
echo Após anos dedicados ao seu alter ego de Gavião Arqueiro, Clint Barton agora precisa passar a tocha adiante. A escolhida para ocupar o posto de heroína é Kate Bishop, uma arqueira de apenas 22 anos. Quando uma imponente presença do passado de Barton ameaça acabar com sua família, os dois arqueiros são forçados a trabalhar juntos. >> Resumo.txt
echo Classificação 8.1 numa escala de 0 a 10, segundo o IMDB >> Classificação.txt

cd #vai para a diretoria raíz 
cd Videoteca/ #entramos na diretoria Videoteca
rm -r Romance/ #remoção da pasta Romance. Ficamos apenas com 5 categorias de filme

touch Classificação.txt Resumo.txt #criação de dois ficheiros dentro da pasta vidioteca juntos com as categorias dos filmes.

#cópia dos dois ficheiros para a pasta as respetivas pastas:
cp Classificação.txt Resumo.txt "Aventura" 
cp Classificação.txt Resumo.txt "Drama"
cp Classificação.txt Resumo.txt "Mistério"
cp Classificação.txt Resumo.txt "Comédia"
rm Classificação.txt Resumo.txt #remoção dos dois ficheiros da diretoria Videoteca

cd Aventura/ #Aceder à pasta Aventura
mkdir "Duna" #Criar a pasta com o nome do filme "Duna" dentro da categoria Aventura
mv Classificação.txt Resumo.txt "Duna" #cortar os ficheiros da pasta Aventura e colar dentro da pasta do filme "Duna
cd Duna
echo Num futuro distópico, uma nobre família comanda um planeta desértico chamado Duna, uníca fonte da especiaria mais rara do universo, a disputada melange, que concede longevidade e grandes poderes a quem a usa.>> Resumo.txt
echo Classificação de 8.2 numa escala de 0 a 10 >> Classificação.txt

cd ../.. #volto para a Videoteca
ls -l #Exibe detalhes de arquivos e pastas do diretório Videoteca
cd Drama/ #entrar na pasta Drama
mkdir Succession #Criar a pastado filme "Succession"
cd Succession/ #entrar à pasta do filme em questão
echo Em Succession, Logan Roy é o patriarca de uma das famílias mais poderosas da atualidade e dono de um império midiático conhecido como Waystar Royco. Ele sempre se dedicou mais aos negócios do que aos quatro filhos - Connor, Kendall, Roman e Siobhan. Quando Logan tem uma piora no seu estado de saúde, os seus descendentes iniciam uma disputa pelo controle das empresas. Mas a fome de poder mostra-se bastante perigosa, colocando à prova a lealdade de cada um deles.>> Resumo.txt #Criação do ficheiro Resumo.txt com o texto que resume o filme
echo Classificação de 8.8 numa escala de 0 a 10.>> Classificação.txt #Criação do ficheiro Classificação. txt com a classificação do filme

cd .. #Voltar à pasta Drama
rm Classificação.txt Resumo.txt #remover os dois ficheiros que estavam na pasta Drama

cd ..
cd Mistério/ #entrar na pasta Mistério
mkdir "Perdidos no Espaço" "The Expanse" "Yellowjackets" "Faminto" #criação de pastas com 4 filmes
cd .. #volta à Videoteca
cd Comédia/ #entrar na pasta Comédia
mkdir "And just like That..." "Não Olhem para Cima" "A cidade perdida" "Sozinho em Casa"

cd #ir para a raíz da diretoria
zip -r Videoteca.zip Videoteca #Compressão .zip de vários arquivos e diretórios simultaneamente 


#Para executar a scrip é necessário na linha de comandos utilizar o seguinte comando: sh ~/Desktop/script.sh


