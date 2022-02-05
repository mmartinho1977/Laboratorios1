cd Terror/
curl --location --request GET 'https://imdb-api.com/API/AdvancedSearch/k_u7qcue85?title_type=tv_movie&genres=horror' | jq .results[] > $HOME/filmesTerror.json
jq "del(.starList, .description, .runtimeStr, .genres, .image, .contentRating, .starts, .genreList)" $HOME/filmesTerror.json > $HOME/Terror.json
jq -c '.title' $HOME/Terror.json | while read i; do
        echo $i | tr -d " \r\t\":'" | mkdir -m 777 "$(cat)"
done

for f in $(ls $HOME/videoteca18551/categorias/Terror/); do
  cd "$f/"
  jq -c '.plot' $HOME/Terror.json | while read i; do
   echo $i > plot.txt
   done
  jq -c '.stars' $HOME/Terror.json | while read i; do
   echo $i > stars.txt
   done
  cd ..
done
cd ..