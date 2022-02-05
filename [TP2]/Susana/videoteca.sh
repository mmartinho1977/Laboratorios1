mkdir -p "Minha videoteca"/{Filmes/{Comedia,Acao,Romance,Drama},Resumos,Documentarios,"Musicas dos filmes"} #cria o diretório Minha videoteca e os subdiretórios Filmes, resumos, documentários e musicas de filmes, sendo que dentro do subdiretorio filmes criei mas 4, comedia, drama, romance e acao.
tree "Minha videoteca" # para ver todo o contudo deste diretório mas em modo árvores para poder ver as ligações entre diretórios e subdiretórios.
cd "Minha videoteca" #entrar dentro deste diretório
echo -e "Esta videoteca é composta por: \nDocumentários \nFilmes - Acao; Comedia; Drama; Romance \nMusicas dos filmes \nResumos" >> indice.txt #criei um ficheiro de texto dentro do diretório minha videoteca com o nome indíce.
tree #ver se o ficheiro txt foi criado
cat indice.txt # ver o conteúdo dentro do ficheiro indice.txt
cd Filmes/Acao # entrar dentro de do Subdiretório Acao
touch cast.txt classificacao.txt reviews.txt #criei estes 3 ficheiros dentro da pasta acao 
ls -l # ver se os ficheiros foram criados
echo -e "Director \nWriter \nStars" >> cast.txt #escrevi dentro deste ficheiro
echo -e "contact \nfilmmakers \ncast \nmore info">> classificacao.txt #escrevi dentro deste ficheiro
echo -e "Reviews \nstars" >> reviews.txt #escrevi dentro deste ficheiro:
tree  #ver se os ficheiros txt foram criados no local pretendido
wc reviews.txt # 2palavras, 2 linhas 14 carateres
cat cast.txt
cat reviews.txt 
cat classificacao.txt # executei estes três comandos cat para ver se o conteudo que escrevi dentro de cada ficheiro txt estava lá
wc -w cast.txt #comando para contar palavras escritas no txt cast
cd #voltar ao diretorio principal
cp -r ./"Minha videoteca"/Filmes/Acao/* ./"Minha videoteca"/Filmes/Drama #copiar todo o conteúdo da pasta Acao para a Pasta Drama, o * indica que todos os arquivos serão copiados.
ls -l "Minha videoteca"/Filmes/Drama #verificar se copiou os ficheiros txt para o subdiretorio Drama
cp -r ./"Minha videoteca"/Filmes/Acao/* ./"Minha videoteca"/Filmes/Comedia #copiar todo o conteúdo da pasta Acao para a Pasta Comedia, o * indica que todos os arquivos serão copiados o ponto antes do nome da minha videoteca é para ele saber que é a pasta home do utilizador.
ls -l "Minha videoteca"/Filmes/Comedia #verificar se copiou os ficheiros
cp -r ./"Minha videoteca"/Filmes/Acao/* ./"Minha videoteca"/Filmes/Romance #copiar todo o conteúdo da pasta Acao para a Pasta Romance, o * indica que todos os arquivos serão copiados.
ls -l "Minha videoteca"/Filmes/Romance #verificar se copiou todos os ficheiros
cd "Minha videoteca"/Filmes/Drama #ir para o diretório Drama
touch "Filme Drama"{1..5}.txt # cria 5 ficheiros txt sequeciais de 1 a 5 como o nome Filme Drama 1 até 5.
ls -l
rm -f "Filme Drama"{1..5}.txt #removi os 5 ficheiros vazios criados
ls -l #verificar se apagou os ficheiros pretendidos
cd
mv aculpaedasestrelas.jpg extraordinario.jpg intocaveis.jpg preciosa.jpg umsonhodeliberdade.jpg ./"Minha videoteca"/Filmes/Drama #movi 5 ficheiros imagem para a pasta drama
ls -l "Minha videoteca"/Filmes/Drama #verificar se copiou os ficheiros pretendidos
cd "Minha videoteca"/Filmes/Drama #ir para subdiretorio Drama
xdg-open aculpaedasestrelas.jpg # com o mesmo comando poderemos abrir quaisquer uma das imagens basta mudar o nome da imagem que queremos abrir a partir do terminal
cd #ir para diretorio principal
cp ./clocks.mp3 ./"Minha videoteca"/"Musicas dos filmes" #copiar a musica clocks para o subdiretorios "Musicas dos filmes"
ls -l "Minha videoteca"/"Musicas dos filmes" #para ver se a musica foi copiada
mpg123 clocks.mp3 #para reproduzir a musica através do terminal, ter em atenção que se esta app não estiver instalada temos de a instalar em modo root as instruções estão no final deste documento. Para parar a reprodução clicar h e depois q
cd "Minha videoteca"/Filmes/Acao #voltar á pasta ação
mv  cast.txt ./newcast.txt #alterar o nome do ficheiro cast.txt para newcast
ls -l # para verificar se alterou o nome
mv classificacao.txt newcast.txt ~/"Minha videoteca"/Filmes/ #Mover estes dois ficheiros para a pasta Filmes
cd .. #voltar ao diretorio filmes
ls -l #confirmar a cópia de ambos os ficheiros para este subdiretorio
cd Acao #ir para o subdiretorio acao
cat reviews.txt #comando para ver o que está escrito dentro do ficheiro reviewx.txt
cd #ir para o diretorio principal
zip "Minha videoteca".zip -r ./"Minha videoteca" #zipar todo o meu diretório
ls *.zip #para ver todos os arquivos zipados apenas
unzip -l "Minha videoteca".zip #para ver detalhadamente o que tenho dentro do arquivo zip
unzip -t "Minha videoteca".zip #para ver se todos os ficheiros e pastas foram corretamente copiados e sem erros
rm -r "Minha videoteca" # para depois ao fazer unzip não dar erro ou perguntar se quero renomear/substituir ou apagar decidi eliminar todo o diretório criado
unzip "Minha videoteca".zip #descompactar o meu diretório
unzip "Minha videoteca".zip #para ver se não ha erros
tree "Minha videoteca" #ver se todo o conteúdo está corretamente descompactado
cd "Minha videoteca"
echo -e "Sei que a minha videoteca não tem muito conteúdo e uma péssima apresentação, mas preferi investir mais tempo a procurar comandos novos e a ver o seu funcionamento do que propriamente em ter uma videoteca toda chique, até porque acho que esse não é o bjetivo do trabalho mas sim a manipulação de vários comandos. Espero que Goste!" >> conclusao_do_trabalho.txt
cat conclusao_do_trabalho.txt
#para depois executar o srcipt digitar chmod +x nomedoficheiro.sh e enter
# digitar ./nomedoficheiro.sh e ele vai executar de modo a que depois de executado vai aparecer em modo tree tudo o que ele executou
#chmod 777 "Minha videoteca"/ -R para dar permissão
#abrir imagens pelo terminal xdg-open aculpaedasestrelas.jpg
#reproduzir musicas temos de instalar primeiro o mpg123, digitar sudo apt-get install mpg123 em modo root
# para reproduzir a musica no terminal, digitar mpg123 nomedamusica.mp3, para sair clicar h e depois q.







