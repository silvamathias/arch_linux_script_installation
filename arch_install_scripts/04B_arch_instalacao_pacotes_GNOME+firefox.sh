#!/bin/bash

# 0 = falso
# 1 = verdadeiro

sn=0 # variavel booleana registrar quando s ou n foram informados

corPadrao="\033[0m"
vermelho="\033[0;31m"
verde="\033[0;32m"
purple="\033[0;35m"
amarelo="\033[1;33m"

#pacotes para usar o Gnome

echo ------------------------------------------------------------------------------------------------
echo --- Instalando pacotes Gnome -------------------------------------------------------------------
echo ------------------------------------------------------------------------------------------------

sleep 2s

pacman -S gnome gnome-themes-extra firefox

sleep 1s

until [ $sn -eq 1 ]; do # teste igualdade entre números

    echo -e "O pacote ${purple}gnome-extra${corPadrao} será o próximo a ser instalado. Ele não é necessário para o bom funcionamento do GNOME."
    echo "Será apresentada uma lista dos programas que serão instalados (Jogos, ferramentas de escritório, editores de texto, planílhas eletrônicas, etc.)"
    echo "Caso não queira instalar bastará digitar 'n' quando perguntado."
    echo "Você poderá instalá-los depois ou alguns deles assim como subistituí-los por outros similares de sua preferência."
    read -p "Precione qualquer tecla para continuar ?" resp

    resp=$(echo $resp | tr '[:upper:]' '[:lower:]')

    if [ $resp = $resp ]; then # teste igualdade entre texto
        sn=1
        # echo "sua resposta foi: $resp" # faça algo
        pacman -S install gnome-extra # faça algo
        var_r=$? # salva em variavel se o último comando foi 
        if [ $var_r -eq 0 ]; then
            
            echo -e "${verde} Pacote ${purple} gnome-extra ${verde} instalado com sucesso: $var_r!${corPadrao}"
        else
            echo -e "${vermelhoClaro}ERRO! Pacote gnome-extra não instalado!${corPadrao}"
        fi

    elif [ $resp = "n" ]; then
        sn=1
        echo -e "${purple}Pacote gnome-extra não foi instalado conforme solicitado!${corPadrao}"
    else
        echo -e "${amarelo}Favor informar 's' para sim ou 'n' para não.${corPadrao}" # reforça a necessidade de informar s ou n
    fi
done

echo ------------------------------------------------------------------------------------------------
echo --- Fim instalando pacotes Gnome ---------------------------------------------------------------
echo ------------------------------------------------------------------------------------------------

sleep 1s

echo ------------------------------------------------------------------------------------------------
echo --- Iniciando o serviço ------------------------------------------------------------------------
echo ------------------------------------------------------------------------------------------------

systemctl enable gdm
