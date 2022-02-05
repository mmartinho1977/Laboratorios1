O trabalho TP2 ( Videoteca ) está preparado para ser instalado a partir da script
install.sh

caso não seja possivel correr a script poderá ser necessário atribuir permissões

neste caso é necesário correr a seguinte instrução :

chmod u+r+x install.sh
neste caso irá atribuir premissões ao utilizador actual ( u ) as pemissões de leitura ( r ) e execução autonoma ( x )

a instação deverá criar a seguinte estrutura :

Movie_Database
	+ scripts
	+ backups
	+ movies

cada uma destas pastas servirá para :

---------------scripts 
pasta onde estão guardadas as scripts do menu, estas têm as instruções bash

---------------backups
pastas de destino para os backups ( criação de ficheiro ZIP com as fichas dos filmes )

---------------movies
pasta com as fichas dos filmes

para executar a videoteca é necessário executar a script menu.sh
( as permissões para a execução deverão são atribuidas automaticamente na instalação )


Opções do MENU

A opção do menu é lida atravez de um comando read no bash com a condição que permite apenas escolher entre as opções 1 e 13. Esta condição é controlada atravez de uma instrução BASH if.else.fi


-----------1  - Listar Filmes
Esta opção lista todos os filmes na videoteca com um comando ls

-----------2  - Procurar Filme
Esta opção utiliza o comando find para encontrar um ficheiro que contenha a palavra passada por paramentro
é utilizada a opção read para ler o texto a procurar e a opção find utiliza os parametros enviados na script com a variavel $1 e $2
Alem disso a instrução find utiliza a opção -iname para ser case-insencitive

exemplo de utilização:
No menu, escolher :
2 dune

deverá aparecer o filme de 2021 - Dune

-----------3  - Procurar Por Actor/Atriz
Esta opção utiliza a instrução grep para procurar texto dentro dos ficheiros.
tambem é case-insensitive com as opções -li configuradas.
Atenção que procura apenas dentro dos fichas dos filmes o texto com a TAG Stars:

exemplo de utilização
No menu escolher
3 salma

deverão aparecer os filmes com a atriz Salma Hayek

-----------4  - Procurar Por Genero
Opção semelhante é opção 3 mas procura pela TAG Gender:

exemplo de utilização
No menu escolher
4 Drama

deverão aparecer os filmes do tipo Drama

-----------5  - Procurar Por Ano
Opção semelhante á opção 3 mas procura pela TAG Year:

exemplo de utilização
No menu escolher
5 1977

deverão aparecer os filmes de 1977

-----------6  - Procurar Nao Vistos
Esta opção utiliza uma variação do comando grep para mostrar os ficheiros que NÃO tem a TAG Status configurada com 1

-----------7  - Adicionar Filme
Esta opção permite adicionar fichas de filmes.
pede para inserir um ano e um nome com o comando read 
apos isso cria o ficheiro com o comando touch e copia-lhe o Template com o comando cp
apos isso permite editar a ficha com o comando nano

exemplo
no menu escolher 
7

e depois colocar ano=2000, nome=Titanic
depois preencher a informação relevante na ficha e sair com Crtl+O para gravar e Crtl+X para sair para o menu


-----------8  - Remover Filme
Esta opção permite remover uma ficha depois de pedir o ano e nome do filme

exemplo
no menu escolher
8 

e depois colocar ano=2000 e nome=Titanic
o ficheiro será removido com o comando rm
é realizado um teste para verificar se o filme existe com o comando test
se o filme não existir é dada a mensagem respectiva.

-----------9  - Marcar como visto
Esta opção , coloca a TAG Status:1 na ficha do filme com a opção de append >> num echo.

.----------10 - Ver Ficha do Filme
Esta opção permite com o comando cat ver a ficha de um filme

-----------11 - Editar Ficha do Filme"
Esta opção permite com o comando nano editar uma ficha de filme.

-----------12 - Backup
Esta opção realiza um zip com o comando zip da pasta de filmes ( movies ) para a para backups ( o nome do ficheiro inclui a data do backup utilizando o comando date)

-----------13 - Voltar para o sistema Operativo"
Sair do menu


Resumindo os comandos utilizados neste projecto foram :

ls - para listar ficheiros
cp - para copiar ficheiros ( na instalação e opções )
rm - para remoer ficheiros ( na instalão e opções )
mv - para mover ficheiros ( na instalação )
cat - para mostar conteudo de ficheiros ( nas opções )
read - para pedir input ao utilizador ( nas opções )
test - para verificar se d3eterminado ficheiro existe ( nas opções )
grep - para procurar conteudo nos ficheiros ( nas opções )
find - para procurar ficheiros ( nas opções )
mkdir - para criar estrutrura de pastas ( na instalação )
rmdir - para remover pasta temporaria ( na instalação )
cd - para entrar nas pastas ( na instalação e opções )
zip - para compactar ficheiros para o backup ( nas opções )
unzip - para a instalação inicial
chmod - para a atrubuição de permissões ( na instalação )
| (pipe) - para execução de varios comandos na mesma linha ( nas opções )
if ..then..else..fi - para as condições dentro das opções
$var - variaveis pedidas via read ao utilizador
$1 - paramentros passados na script
&& - nas instruções IF
-ge (great ou equal) - nas instruções IF
-lt (less then) - nas instruções IF
bash - para executar ficheiros sh sem atribuição de permissões de execução
clear - para limpar o ecran
echo - para mensagens no ecran
touch - para criar um ficheiro vazio ( nas opções )
wc - esta instrução mostra o numero de palavras numa ficha de filme ( nas opções )
date - para colocar a data no ficheiro de backup ( nas opções )
sed - para mostrar algumas linhas do ficheiro ( nas opçoes )
tee - para adicionar texto no final de ficheiros

o ficheiro install.zip foi criado com o comando : zip -r -j install.zip ./

Conclusão

Este trabalho foi realizado por:
Josue Rodrigues
Aluno 11993  IPCA - LESI
