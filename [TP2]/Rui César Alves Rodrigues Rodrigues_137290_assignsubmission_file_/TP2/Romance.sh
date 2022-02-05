cd Romance/
curl --location --request GET 'https://imdb-api.com/API/AdvancedSearch/k_u7qcue85?title_type=tv_movie&genres=romance' | jq .results[] > $HOME/filmesRomance.json
jq "del(.starList, .description, .runtimeStr, .genres, .image, .contentRating, .starts, .genreList)" $HOME/filmesRomance.json > $HOME/Romance.json
jq -c '.title' $HOME/Romance.json | while read i; do
        echo $i | tr -d " \r\t\":'" | mkdir -m 777 "$(cat)"
done

for f in $(ls $HOME/videoteca18551/categorias/Romance/); do
  cd "$f/"
  jq -c '.plot' $HOME/Romance.json | while read i; do
   echo $i > plot.txt
   done
  jq -c '.stars' $HOME/Romance.json | while read i; do
   echo $i > stars.txt
   done 
  cd ..
done
cd ..