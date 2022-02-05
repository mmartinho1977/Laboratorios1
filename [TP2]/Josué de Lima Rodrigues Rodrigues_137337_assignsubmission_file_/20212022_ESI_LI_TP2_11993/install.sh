echo "---------------------------"
echo "- Instalação da Videoteca -"
echo "---------------------------"
echo ""
echo ""
echo "A criar a estrutura de pastas"
mkdir Movie_database # cria pasta 
cd Movie_database # navega para a pasta
mkdir scripts
mkdir movies
mkdir backups
cd ..
mkdir temp
echo ""
echo "A descompactar e copiar dados"
unzip install.zip -d ./temp # descompacta ficheiro
mv ./temp/??.sh ./Movie_database/scripts # move ficheiros 
mv ./temp/?.sh ./Movie_database/scripts
mv ./temp/menu.sh ./Movie_database
mv ./temp/Template ./Movie_database
mv ./temp/readme.txt ./Movie_database
rm ./temp/install.sh # remove ficheiros
cp ./temp/* ./Movie_database/movies # copia ficheiros
echo ""
echo "A remover ficheiros temporarios"
cd temp
rm * # remove todos os ficheiros
cd ..
rmdir temp # remove pasta
echo ""
echo "A atribuir acessos"
cd Movie_database
chmod u+r+x menu.sh # atribui permissões de leitura e execução ao utilizador actual
echo ""
echo "Instalação completa na pasta Movie_database" 
echo ""
echo ""
echo "---------------------------"
echo "Aluno 19553"
echo "---------------------------"
echo ""
echo ""
echo "PARA INICIAR CLICK EM ENTER ........"
read op # pede input ao utilizador ( para fazer pausa e dar enter )
bash ./menu.sh
