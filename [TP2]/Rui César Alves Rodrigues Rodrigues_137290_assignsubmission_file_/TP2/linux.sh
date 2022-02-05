cd ~ #Aceder à pasta home

echo "Acao\nTerror\nAventura\nRomance\nComedia\nCrime\nDesporto" > categorias.txt # escrever dentro do ficheiro categorias.txt a string

mkdir -p videoteca18551/categorias # criar a pasta videoteca18551 e criar a pasta "filha": categorias dentro da pasta videotecas18551

cd videoteca18551/categorias/ # aceder à pasta criada no passo anterior

File="$HOME/categorias.txt" #declarar a variável File com o caminho do ficheiro categorias.txt
Lines=$(cat $File) #declarar variável line que tem irá tomar o valor das linhas do ficheiro categorias.txt

for Line in $Lines #Ciclo "for" para cada uma das Linhas do ficheiro categorias.txt
do
        mkdir "$Line" #criar a pasta com cada categoria
done

sh $HOME/Acao.sh #executar as scripts para criacao de pastas da categoria Acao 

sh $HOME/Aventura.sh #executar as scripts para criacao de pastas da categoria Aventura 

sh $HOME/Comedia.sh #executar as scripts para criacao de pastas da categoria Comedia 

sh $HOME/Desporto.sh #executar as scripts para criacao de pastas da categoria Desporto 

sh $HOME/Romance.sh #executar as scripts para criacao de pastas da categoria Romance

sh $HOME/Terror.sh #executar as scripts para criacao de pastas da categoria Terror 

zip -r $HOME/videoteca18551.zip $HOME/videoteca18551 #comprimir a pasta videoteca18851. O resultado é o ficheiro videoteca18551.zip

unzip $HOME/videoteca18551.zip -d ~/unzipedvideoteca  #descomprimir a pasta comprimida no passo anterior para uma pasta diferente da original.


