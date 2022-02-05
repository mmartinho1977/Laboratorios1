
As scripts devem ser colocadas na mesma pasta e executadas a partir daí.

A primeira script a executar é a chamada: "videoteca_tp2_2360.sh".

Para executar as scripts deverá primeiro dar as permissões de execução. Para tal basta no terminal como sudo, fazer "$ chown 777 nomedascript".

Depois disso para executar a script pelo terminal, basta entrar na diretoria onde as scripts se encontram, através de um "$ cd nomediretoria" e fazer "& ./nomescript" .

De forma a ser possível manipolar a diretoria /videoteca e respetivos ficheiros, segue abaixo alguns comandos para utilizar:


Comandos de consulta:


Saber o espaço que ocupa o diretório.

$ du -sh videoteca/  

Saber o espaço que ocupa um ficheiro de informação de filme.

$ cd videoteca/categoria_filmes/acao
$ du -sh bloodshot.txt

Saber quantos caracteres tem um ficheiro.

$ wc -m bloodshot.txt 


Comandos para manipulação:

Criar pasta para nova categoria de filmes.

$ mkdir ficcao_cientifica

Remover categoria de filmes.

$ rmdir aventura/

Mover diretorias ou ficheiros:

$ mv bloodshot.txt aventura/


Luís Gomes 
Nº Aluno: 23060





