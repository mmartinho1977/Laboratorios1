echo "Benvindo ao programa de videoteca"
echo " "
echo "Aluno: Júlio Silva - 22294"
echo " "
echo " "
echo "Utilizador:" 
whoami # indicação do utilizador em uso
echo " "
date -u
echo " "
echo " "
echo " Criação de diretorias na Videoteca!"
mkdir -p Videoteca/genero # criaçao de pasta 
cd Videoteca/genero 
ls # verificar as pastas existentes no diretorio
mkdir acao # criaçao de pasta
mkdir romance # criaçao de pasta
mkdir drama # criaçao de pasta
mkdir comedia # criaçao de pasta
mkdir terror # criaçao de pasta
ls # verificar as pastas existentes no diretorio
echo " "
echo "Entrar na Videoteca"
echo " "
echo " "
ls # verificar as pastas existentes no diretorio
cd acao
mkdir titulo1
cd titulo1 # entrar na pasta
touch sipnose.txt cast.txt #criaçao de ficheiros 
ls # verificar as pastas existentes no diretorio
echo With Spider- Mans identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be Spider-Man. >> sipnose.txt # É escrito resumo no ficheiro sipnose informação do filme
echo "Director Jon Watts; Writers Chris McKennaErik SommersStan Lee (based on the Marvel comic book by) Stars Tom HollandZendayaBenedict Cumberbatch" >> cast.txt # É escrita informação no ficheiro cast informação do filme
cd .. #voltar à pasta anterior 
ls
mv "titulo1" "Spider-Man: No Way Home" #alteração do nome da pasta do filme 
ls # verificar as pastas existentes no diretorio
cd "Spider-Man: No Way Home" # aceder diretamente a pasta do filme 
cd ~ # Voltar ao inicio para entrar a seguir na videoteca 
cd Videoteca #entrar na pasta
cd genero #entrar na pasta
cd terror #entrar na pasta
touch lixo1.txt #criar ficheiro
ls #listar ficheiros
rm lixo1.txt #eliminar ficheiro
ls #lista ficheiros e pastas
cd .. #volta atras na diretoria
ls #lista dretorias
cd comedia
mkdir DontLookUp
cd DontLookUp
touch sipnose.txt cast.txt # criaçao de ficheiros
echo Two low-level astronomers must go on a giant media tour to warn mankind of an approaching comet that will destroy planet Earth. >> sipnose.txt
echo "Director Adam McKay Writers Adam McKay(screenplay by)David Sirota(story by) Stars Leonardo DiCaprioJennifer LawrenceMeryl Streep" >> cast.txt #criar ficheiros com informaçao de sipnose e cast
wc -mlw sipnose.txt #Conta palavras, carateres e linhas em multiplos ficheiros
wc -mlw cast.txt #Conta palavras, carateres e linhas em multiplos ficheiros
wc -l sipnose.txt # cota o numero de linhas
wc -l cast.txt #conta o numero de linhas
wc -c sipnose.txt #mostra o total de bytes num ficheiro
wc -c cast.txt #mostra o total de bytes num ficheiro
