cd Crime/
curl --location --request GET 'https://imdb-api.com/API/AdvancedSearch/k_u7qcue85?title_type=tv_movie&genres=crime' | jq .results[] > $HOME/filmesCrime.json
jq "del(.starList, .description, .runtimeStr, .genres, .image, .contentRating, .starts, .genreList)" $HOME/filmesCrime.json > $HOME/Crime.json
jq -c '.title' $HOME/Crime.json | while read i; do
        echo $i | tr -d " \r\t\":'" | mkdir -m 777 "$(cat)"
done

for f in $(ls $HOME/videoteca18551/categorias/Crime/); do
  cd "$f/"
  jq -c '.plot' $HOME/Crime.json | while read i; do
   echo $i > plot.txt
   done
  jq -c '.stars' $HOME/Crime.json | while read i; do
   echo $i > stars.txt
   done 
  cd ..
done
cd ..