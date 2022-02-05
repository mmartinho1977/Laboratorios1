mkdir -p Videoteca/Filmes/{Terror,Comedia,Romance} #Cria as pastas Videoteca dentro cria a pasta Filmes e dentro cria a pasta Terror Comedia e Romance
mkdir -p Videoteca/Filmes/Terror/{Malignant,SilentNight} #Cria 2 pastas com o nome Malignant e SilentNight dentro de Terror com o nome dos filmes
mkdir -p Videoteca/Filmes/Comedia/{RedNotice,Encanto} #Cria 2 pastas com o nome Encanto e RedNotice dentro da categoria Comedia
mkdir -p Videoteca/Filmes/Romance/{LoveHard,Titanic} #Cria 2 pastas com o nome Titanic e LoveHard dentro de Romance
echo "Madison is paralyzed by shocking visions of grisly murders, and her torment worsens as she discovers that these waking dreams are in fact terrifying realities." > Videoteca/Filmes/Terror/Malignant/Resumo.txt #Cria o ficheiro Resumo.txt para dentro da pasta Malignant com o respectivo resumo do filme 
echo "If you can hang with the slow gestation of the first hour or so of Malignant, the final third may grow on you." > Videoteca/Filmes/Terror/Malignant/Review.txt #Cria um ficheiro Review.txt para dentro da pasta Malignant com um comentário do filme
echo "Nell, Simon, and their son Art are ready to welcome friends and family for what promises to be a perfect Christmas gathering. Perfect except for one thing: everyone is going to die." > Videoteca/Filmes/Terror/SilentNight/Resumo.txt #Cria um ficheiro Resumo.txt para dentro do filme SilentNight com o respectivo resumo do filme
echo "Really hard to watch." > Videoteca/Filmes/Terror/Malignant/Review_.txt #Cria um ficheiro Review_.txt para dentro da pasta Malignant com um comentario do filme

echo "A young Colombian girl has to face the frustration of being the only member of her family without magical powers." > Videoteca/Filmes/Comedia/Encanto/Resumo.txt #Cria um ficheiro Resumo.txt para dentro da pasta Encanto com o respectivo resumo do filme
echo "My favorite Disney film since Frozen." > Videoteca/Filmes/Comedia/Encanto/Review.txt #Cria um ficheiro Review.txt para dentro da pasta Encanto com um comentário do filme
echo  "An Interpol agent tracks the world's most wanted art thief." > Videoteca/Filmes/Comedia/RedNotice/Resumo.txt #Cria um ficheiro Resumo.txt para dentro da pasta RedNotice com o respectivo resumo do filme
echo "Can't wait to see what happens next." > Videoteca/Filmes/Comedia/RedNotice/Review.txt #Cria um ficheiro Review.txt para dentro da pasta RedNotice com um comentário do filme

echo "An LA girl, unlucky in love, falls for an East Coast guy on a dating app and decides to surprise him for the holidays, only to discover that she's been catfished. This lighthearted romantic comedy chronicles her attempt to reel in love." > Videoteca/Filmes/Romance/LoveHard/Resumo.txt #Cria um ficheiro Resumo .txt para dentro da pasta LoveHard com o respectivo resumo do filme
echo "The most beautiful film i've ever seen." > Videoteca/Filmes/Romance/LoveHard/Review.txt #Cria um ficheiro Review.txt para dentro da pasta LoveHard com um comentário do filme
echo "A seventeen-year-old aristocrat falls in love with a kind but poor artist." > Videoteca/Filmes/Romance/Titanic/Resumo.txt #Cria um ficheiro Resumo.txt para dentro da pasta Titanic com o respectivo resumo do filme
echo "Very ambitious, but beautifully filmed and acted." > Videoteca/Filmes/Romance/Titanic/Review.txt #Cria um ficheiro Review.txt para dentro da pasta Titanic com um comentário do filme

mv Videoteca/Filmes/Terror/Malignant/Review_.txt Videoteca/Filmes/Terror/SilentNight #Move o ficheiro Review_.txt da pasta Malignant para a pasta SilentNight


zip -r Videoteca.zip Videoteca #Realiza o zip de toda a diretoria Videoteca
unzip Videoteca.zip -d /home/joao/Documentos #Realiza o unzip para a pasta Documentos

mkdir -p Result #Cria a pasta Result
find /home/joao/"Área de Trabalho"/Videoteca/ -type f -print |wc -l >> Result/Conta_ficheiros.txt #Conta os ficheiros que existe dentro da diretoria Videoteca
grep -Hrn but  Videoteca/ >> Result/but.txt #Verifica em toda a diretoria Videoteca onde está inserida a palavra (but).
