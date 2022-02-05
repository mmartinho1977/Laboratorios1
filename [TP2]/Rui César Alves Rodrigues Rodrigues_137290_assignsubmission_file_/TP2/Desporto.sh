cd Desporto/
curl --location --request GET 'https://imdb-api.com/API/AdvancedSearch/k_u7qcue85?title_type=tv_movie&genres=sport' | jq .results[] > $HOME/filmesDesporto.json
jq "del(.starList, .description, .runtimeStr, .genres, .image, .contentRating, .starts, .genreList)" $HOME/filmesDesporto.json > $HOME/Desporto.json
jq -c '.title' $HOME/Desporto.json | while read i; do
        echo $i | tr -d " \r\t\":'" | mkdir -m 777 "$(cat)"
done

for f in $(ls $HOME/videoteca18551/categorias/Desporto/); do
  cd "$f/"
  jq -c '.plot' $HOME/Desporto.json | while read i; do
   echo $i > plot.txt
   done
  jq -c '.stars' $HOME/Desporto.json | while read i; do
   echo $i > stars.txt
   done
  cd ..
done
cd ..