#!/bin/bash

echo "Quer comprimir ou descomprimir a videoteca ?"
echo "1 - Comprimir"
echo "2 - Descomprimir" 

read RESP
if [[ "$RESP" == 1 ]];
then
zip -r Videoteca_1.zip Videoteca_1
echo "Videoteca_1 foi Comprimida !!"
else
unzip  Videoteca_1.zip
fi
