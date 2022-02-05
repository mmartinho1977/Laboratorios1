#!/bin/bash
#-------------MENU------------
echo "...................................ZIP E UNZIP - IPCA...............................................";
echo "........................................MENU....................................................";
echo "Opção 1-> Comprimir pasta"
echo "Opção 2-> Descomprimir pasta";
echo "Indique a opção:";

read opcao;


if (($opcao==1)) 
then
	zip -r ../20212022_ESI_LITP218562.zip ../tp2
elif  (($opcao==2)) 
then
sudo unzip 20212022_ESI_LITP218562.zip -d /home/desktop
fi
