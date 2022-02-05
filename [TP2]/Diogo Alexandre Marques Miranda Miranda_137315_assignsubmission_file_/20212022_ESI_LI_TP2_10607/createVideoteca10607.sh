#!/bin/bash

# verificar se o ficheiro zip existe. Se sim, faz unzip
if [[ -f Videoteca10607.zip ]]; then
  # unzip -o to overwrite files WITHOUT prompting
  unzip -o Videoteca10607.zip 
  # fecha o script com error code de sucesso
  exit 0
fi

# criar diretório
mkdir "Videoteca 10607"

# renomear diretório com espaços no nome
mv "./Videoteca 10607" ./Videoteca10607

# mudar de diretório usando caminho relativo
cd Videoteca10607

# criar diretório dentro de diretório
mkdir -p Movies/Top3

# mudar de diretório usando caminho relativo
cd Movies/Top3

# criar múltiplos diretórios usando curly brackets
mkdir {ByRanking,ByReleaseDate,ByNumberOfRatings}

# criar múltiplos diretórios e sudiretórios dentro de outros
mkdir -p {ByRanking/{1,2,3},ByReleaseDate/{1,2,3}}

#criar múltiplos diretórios com loop for
for i in `seq 1 3`
do
 mkdir "ByNumberOfRatings/${i}"
done

# mudar para diretórios "pais" (Videoteca10607/Movies)
cd ../

# mudar para o diretório anterior (Videoteca10607/Movies/Top3)
cd - 

# criar ficheiro dentro de um diretório com espaços no nome
touch "ByRanking/1/Spider-Man: No Way Home.txt"

# criar ficheiro dentro de um diretório
touch ByRanking/2/TheUnforgivable.txt

# mudar para a raiz da videoteca
cd ../../../Videoteca10607

# apagar um diretório vazio
rm -d Movies/Top3/ByReleaseDate/3

# apagar um diretório com ficheiros
rm -r Movies/Top3/ByRanking/1

# apagar diretórios e ficheiros com a devida confirmação de remoção
rm -ri Movies/Top3/ByRanking/2

# cria alguns ficheiros txt e apaga múltiplos ficheiros com a mesma extensao através de expressão regular
touch Movies/Top3/ByReleaseDate/2/{1.txt,2.txt,3.txt} && rm Movies/Top3/ByReleaseDate/2/*.txt

# mudar para o diretório "pai" da videoteca
cd ..

# apagar a videoteca (diretórios, subdiretórios e ficheiros)
rm -r ./Videoteca10607

# criar a estrutura da videoteca de forma mais simplificada
mkdir -p Videoteca10607/Movies/Top3/{ByRanking/{1,2,3},ByReleaseDate/{1,2,3},ByNumberOfRatings/{1,2,3}}

# mudar para a videoteca
cd Videoteca10607/Movies/Top3

# criar os ficheiros do top3 de filmes ByRanking
# e adicionar as informações do filme no final do ficheiro.
# -e para permitir caracteres backslash-escaped
echo -e "rank: 1 \ntitle: The Shawshank Redemption \n" >> ByRanking/1/movieInfo.txt
echo -e "rank: 2 \ntitle: The Godfather \n" >> ByRanking/2/movieInfo.txt
echo -e "rank: 3 \ntitle: The Godfather: Part II \n" >> ByRanking/3/movieInfo.txt

# concatenar as informações dos filmes num ficheiro global
cat ByRanking/1/movieInfo.txt ByRanking/2/movieInfo.txt ByRanking/3/movieInfo.txt > ByRanking/rank.txt

# criar os ficheiros do top3 de filmes ByReleaseDate
# usando o printf
printf "rank: 1 \ntitle: Spider-Man: No Way Home \n" >> ByReleaseDate/1/movieInfo.txt
printf "rank: 2 \ntitle: Jai Bhim \n" >> ByReleaseDate/2/movieInfo.txt
printf "rank: 3 \ntitle: Dune: Part One \n" >> ByReleaseDate/3/movieInfo.txt

# concatenar as informações dos filmes num ficheiro global
# cria um ficheiro geral com as informações do filme 1
cat ByReleaseDate/1/movieInfo.txt > ByReleaseDate/rank.txt

# adiciona as informações do filme 2 ao ficheiro geral ja existente
cat ByReleaseDate/2/movieInfo.txt >> ByReleaseDate/rank.txt

# adiciona as informações do filme 3 ao ficheiro geral ja existente
cat ByReleaseDate/3/movieInfo.txt > ByReleaseDate/rank.txt

# criar os ficheiros do top3 de filmes ByNumberOfRatings
# e adicionar as informações do filme no final do ficheiro.
# -e para permitir caracteres backslash-escaped
echo -e "rank: 1 \ntitle: The Shawshank Redemption \n" >> ByNumberOfRatings/1/movieInfo.txt
echo -e "rank: 2 \ntitle: The Dark Knight \n" >> ByNumberOfRatings/2/movieInfo.txt
echo -e "rank: 3 \ntitle: Inception \n" >> ByNumberOfRatings/3/movieInfo.txt

# concatenar as informações dos filmes num ficheiro global
cat ByNumberOfRatings/1/movieInfo.txt ByNumberOfRatings/2/movieInfo.txt ByNumberOfRatings/3/movieInfo.txt > ByNumberOfRatings/rank.txt

# feedback de pasta criada
echo "Videoteca10607 created"
echo "Videoteca10607 tree"

# listar a estrutura atual de sudiretórios de forma recursiva
ls -R

# zip Videoteca10607 dir na pasta raiz
zip ../../../Videoteca10607 ../../../Videoteca10607


