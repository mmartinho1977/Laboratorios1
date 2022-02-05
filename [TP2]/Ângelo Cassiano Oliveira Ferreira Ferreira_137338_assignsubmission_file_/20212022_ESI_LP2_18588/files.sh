mkdir -p Videoteca/Movies/{Comedy,Crime} #Cria  pastas, subpastas em cadeia.
mkdir -p Videoteca/Movies/Comedy/{DeadPool,DeadPool2} #adiciona duas pastas dentro da subpasta comedy
mkdir -p Videoteca/Movies/Crime/{TheGuilty,TheInfiltrator} #adiciona duas pastas na subpasta Crime
mkdir -p Videoteca/Series/Drama/{TheWheelOfTime,NinePerfectStrangers} #adiciona duas pastas na subpasta Drama

echo "Wisecracking mercenary gets experimented on and becomes immortal but ugly, and sets out to track down the man who ruined his looksA wisecracking mercenary gets experimented on and becomes immortal but ugly, and sets out to track down the man who ruined his looksA wisecracking mercenary gets experimented on and becomes immortal but ugly, and sets out to track down the man who ruined his looksA wisecracking mercenary gets experimented on and becomes immortal but ugly, and sets out to track down the man who ruined his looksA wisecracking mercenary gets experimented on and becomes immortal but ugly, and sets out to track down the man who ruined his looksA wisecracking mercenary gets experimented on and becomes immortal but ugly, and sets out to track down the man who ruined his looksA wisecracking mercenary gets experimented on and becomes immortal but ugly, and sets out to track down the man who ruined his looksA wisecracking mercenary gets experimented on and becomes immortal but ugly, and sets out to track down the man who ruined his looks.A wisecracking mercenary gets experimented on and becomes immortal but ugly, and sets out to track down the man who ruined his looks.A wisecracking mercenary gets experimented on and becomes immortal but ugly, and sets out to track down the man who ruined his looks. A wisecracking mercenary gets experimented on and becomes immortal but ugly, and sets out to track down the man who ruined his looks." > Videoteca/Movies/Comedy/DeadPool/Resume.txt #Cria um ficheiro txt com o texto que escrevemos anteriormente no caminha que indicamos
echo "966.011 IMDb users have given a weighted average vote of 8,0 / 10 ." > Videoteca/Movies/Comedy/DeadPool/Rating.txt #Cria um ficheiro txt com o texto escrito em echo' na diretoria indicada

echo "Foul-mouthed mutant mercenary Wade Wilson (a.k.a. Deadpool) assembles a team of fellow mutant rogues to protect a young boy with supernatural abilities from the brutal, time-traveling cyborg Cable." > Videoteca/Movies/Comedy/DeadPool2/Resume.txt #Cria um ficheiro txt com o texto escrito em echo' na diretoria indicada
echo "531.279 IMDb users have given a weighted average vote of 7,7 / 10 ." > Videoteca/Movies/Comedy/DeadPool2/Rating.txt #Cria um ficheiro txt com o texto escrito em echo' na diretoria indicada


echo "A demoted police officer assigned to a call dispatch desk is conflicted when he receives an emergency phone call from a kidnapped woman.." > Videoteca/Movies/Crime/TheGuilty/Resume.txt #Cria um ficheiro txt com o texto escrito em echo' na diretoria indicada
echo "95.025 IMDb users have given a weighted average vote of 6,3 / 10 ." > Videoteca/Movies/Crime/TheGuilty/Rating.txt #Cria um ficheiro txt com o texto escrito em echo' na diretoria indicada

echo "A U.S. Customs official uncovers a money laundering scheme involving Colombian drug lord Pablo Escobar.." > Videoteca/Movies/Crime/TheInfiltrator/Resume.txt #Cria um ficheiro txt com o texto escrito em echo' na diretoria indicada
echo "72.220 IMDb users have given a weighted average vote of 7,0 / 10." > Videoteca/Movies/Crime/TheInfiltrator/Rating.txt #Cria um ficheiro txt com o texto escrito em echo' na diretoria indicada


echo "Set in a high fantasy world where magic exists, but only some can access it, a woman named Moiraine crosses paths with five young men and women. This sparks a dangerous, world-spanning journey. Based on the book series by Robert Jordan." > Videoteca/Series/Drama/TheWheelOfTime/Resumo.txt #Cria um ficheiro txt com o texto escrito em echo' na diretoria indicada
echo "51.626 IMDb users have given a weighted average vote of 7,5 / 10 ." > Videoteca/Series/Drama/TheWheelOfTime/Rating.txt #Cria um ficheiro txt com o texto escrito em echo' na diretoria indicada

echo "Nine stressed city dwellers visit a boutique health-and-wellness resort that promises healing and transformation. The resort's director is a woman on a mission to reinvigorate their tired minds and bodies." > Videoteca/Series/Drama/NinePerfectStrangers/Resumo.txt #Cria um ficheiro txt com o texto escrito em echo' na diretoria indicada
echo "37.986 IMDb users have given a weighted average vote of 7,0 / 10 ." > Videoteca/Series/Drama/NinePerfectStrangers/Rating.txt #Cria um ficheiro txt com o texto escrito em echo' na diretoria indicada

grep -Eo '^[^ ]+' /home/cassiano/Videoteca/Movies/Comedy/DeadPool/Resume.txt >> /home/cassiano/Videoteca/Movies/Comedy/DeadPool/PrimeirasPalavra.txt #Criar um ficheiro TXT apenas com a primeira palavra do ficheiro indicado esse ficheiro novo para a pasta que de origem. 

gpg -c /home/cassiano/Videoteca/Movies/Comedy/DeadPool/PrimeirasPalavra.txt #Codifica o ficheiro que com a prmeira palvra do comando usado anteriormente
gpg /home/cassiano/Videoteca/Movies/Comedy/DeadPool/PrimeirasPalavra.txt.gpg #Descodifica o ficheiro  anterior.
#wget -r https://www.imdb.com/title/tt8760932/?ref_=tt_rt || este comando está comentado pelo simples facto do tempo de demora a ser executado, mas está 100% funcionavel, este comando faz o download do site completo 
zip -r Videoteca.zip Videoteca #Zipa o ficheiro Videoteca
unzip Videoteca.zip -d /home/cassiano #Faz o unzip da pasta videoteca para a diretoria indicada
