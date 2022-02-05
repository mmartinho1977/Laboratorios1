cd Acao/ #aceder à pasta Acao
curl --location --request GET 'https://imdb-api.com/API/AdvancedSearch/k_u7qcue85?title_type=tv_movie&genres=action' | jq .results[] > $HOME/filmesacao.json # Efetuar pedido à api do IMDB processar o JSON de resposta e escrever o JSON processado no ficheiro filmesacao.json
jq "del(.starList, .description, .runtimeStr, .genres, .image, .contentRating, .starts, .genreList)" $HOME/filmesacao.json > $HOME/acao.json # Remover as propriedades que não vão ser utilizadas. "Limpar o JSON" e escrever o resultado "limpo" no ficheiro acao.json
jq -c '.title' $HOME/acao.json | while read i; do #ler do ficheiro acao.json apenas os titulos. Enquanto os titulos estiverem a ser lidos...
        echo $i | tr -d " \r\t\":'" | mkdir -m 777 "$(cat)" #... processar a variavel i, remover espaços,aspas,virgulas, : e "plicas" e criar a pasta com permissoes totais com o nome do filme
done  #indica o fim do ciclo while

for f in $(ls $HOME/videoteca18551/categorias/Acao/); do #para cada pasta (filme) lida/o do comando ls $HOME/videoteca18551/categorias/Acao/ 
  cd "$f/" #aceder à pasta do filme
  jq -c '.plot' $HOME/acao.json | while read i; do #processa o plot do filme
   echo $i > plot.txt #escreve o plot do filme no ficheiro plot.txt
   done
  jq -c '.stars' $HOME/acao.json | while read i; do #processa as estrelas do filme
   echo $i > stars.txt #escreve as estrelas  do filme no ficheiro plot.txt
   done
  cd .. #volta à pasta $HOME/videoteca18551/categorias/Acao/
done
cd .. #volta à pasta $HOME/videoteca18551/categorias