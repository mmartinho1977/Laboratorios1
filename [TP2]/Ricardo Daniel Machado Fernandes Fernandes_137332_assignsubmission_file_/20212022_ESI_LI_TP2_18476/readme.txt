O zip extraido vem com já com um zip da pasta videoteca, e 3 scripts: "script.sh", "unzip.sh", "zip.sh"

Todos os ficheiro tem que estar num mesmo diretório.

Para correr um ficheiro das scripts basta num diretória na qual tiver o filme correr o camando ./nome_da_script.sh ou caso o terminal coloque erro de permissões correr o comando chmod +x nome_da_script.sh & ./nome_da_script.sh

Se pretender extrair a pasta do zip basta correr o ficheiro unzip.sh na qual caso o zip não exista manda uma mensagem a dizer que tal ficheiro nao existe, caso exista mas já exista uma pasta Videoteca este apagar a pasta antiga e extrai a nova e caso nenhuma das condições atrás se verifique apenas extrai.

Se pretender zipar a pasta Videoteca basta correr o ficheiro zip.sh na qual caso a pasta Videoteca não exista manda uma mensagem a dizer que tal pasta nao existe, caso exista mas já exista um ficheiro de zip da mesma apaga o antigo e zipa um novo e caso nenhuma das condições atrás se verifique apenas zipa.

Se pretende correr a criação da pasta Videoteca basta correr o ficheiro script.sh que caso a pasta exista apaga a pasta vem como todo o conteudo e começa a criar e caso não exista começa logo a criar a pasta.
A criação da pasta consiste na criação de um diretório principal "Videoteca" e dentro dele a criação da pasta das categorias de filmes que existe.
Depois disso cria dentro da respetiva categoria um diretório para cada filme e dentro de cada filme cria 3 ficheiros: elenco.txt, resumo.txt, reviews.txt (ficheiro esse que só contem a avaliação média do filme)

Após a criação desses ficheiros e diretorias todos o terminal emite uma mensagem a perguntar ao utilizador se prentende criar já o ficheiro de top 5 ratings e caso o utilizador digite o numero 1 o script recolhe a avalição de todos os filme presente no respetivo ficheiro reviews.txt, ordena os filmes por ordem decrescente e remove as linhas que estiverem abaixo da linha 5.
