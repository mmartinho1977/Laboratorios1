echo "Benvindo ao programa de videoteca"
echo " "
echo "Aluno: Júlio Silva - 22294"
echo " "
echo " "
echo "Utilizador:" 
whoami
echo " "
date -u
echo " "
echo "Instalar o zip mais recente do Linux, caso não exista"
sudo apt install zip unzip  # instala o zip mais recente do Linux
zip -r Backup.zip Videoteca/ #comprime o ficheiro 
echo "Fim da compressão dos ficheiros"
echo "Fechar janela"
