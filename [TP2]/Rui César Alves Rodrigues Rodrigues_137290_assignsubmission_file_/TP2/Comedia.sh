cd Comedia/
curl --location --request GET 'https://imdb-api.com/API/AdvancedSearch/k_u7qcue85?title_type=tv_movie&genres=comedy' | jq .results[] > $HOME/filmesComedia.json
jq "del(.starList, .description, .runtimeStr, .genres, .image, .contentRating, .starts, .genreList)" $HOME/filmesComedia.json > $HOME/Comedia.json
jq -c '.title' $HOME/Comedia.json | while read i; do
        echo $i | tr -d " \r\t\":'" | mkdir -m 777 "$(cat)"
done

for f in $(ls $HOME/videoteca18551/categorias/Comedia/); do
  cd "$f/"
  jq -c '.plot' $HOME/Comedia.json | while read i; do
   echo $i > plot.txt
   done
  jq -c '.stars' $HOME/Comedia.json | while read i; do
   echo $i > stars.txt
   done 
  cd ..
done
cd ..