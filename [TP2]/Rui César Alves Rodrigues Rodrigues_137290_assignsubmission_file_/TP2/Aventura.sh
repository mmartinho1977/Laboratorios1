cd Aventura/
curl --location --request GET 'https://imdb-api.com/API/AdvancedSearch/k_u7qcue85?title_type=tv_movie&genres=adventure' | jq .results[] > $HOME/filmesAventura.json
jq "del(.starList, .description, .runtimeStr, .genres, .image, .contentRating, .starts, .genreList)" $HOME/filmesAventura.json > $HOME/Aventura.json
jq -c '.title' $HOME/Aventura.json | while read i; do
        echo $i | tr -d " \r\t\":'" | mkdir -m 777 "$(cat)"
done

for f in $(ls $HOME/videoteca18551/categorias/Aventura/); do
  cd "$f/"
  jq -c '.plot' $HOME/Aventura.json | while read i; do
   echo $i > plot.txt
   done
  jq -c '.stars' $HOME/Aventura.json | while read i; do
   echo $i > stars.txt
   done
  cd ..
done
cd ..