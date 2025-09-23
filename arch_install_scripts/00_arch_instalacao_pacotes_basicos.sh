#!/bin/bash

#pacotes essenciais

corPadrao="\033[0m"
vermelho="\033[0;31m"
verde="\033[0;32m"
purple="\033[0;35m"
amarelo="\033[1;33m"

echo ------------------------------------------------------------------------------------------------
echo --- Instalando pacotes básicos -----------------------------------------------------------------
echo ------------------------------------------------------------------------------------------------

sleep 1s

pacstrap /mnt base base-devel linux linux-firmware dhcpcd nano vim

var_r=$?

if [ $var_r -eq 0 ]; then
    echo -e "${verde} Pacotes instalados com sucesso: $var_r!${corPadrao}"
else
    echo -e "${vermelhoClaro}ERRO! Pacotes não instalado!${corPadrao}"
fi

echo ------------------------------------------------------------------------------------------------
echo --- Fim instalando pacotes básicos -------------------------------------------------------------
echo ------------------------------------------------------------------------------------------------

sleep 1s

echo ------------------------------------------------------------------------------------------------
echo --- Criando o arquivo fstab --------------------------------------------------------------------
echo ------------------------------------------------------------------------------------------------

sleep 1s

genfstab -U /mnt >> /mnt/etc/fstab

if [ $var_r -eq 0 ]; then
    echo -e "${verde}Arquivo ${purple} fstab ${verde} gerado com sucesso!${corPadrao}"
else
    echo -e "${vermelhoClaro}ERRO! Falha ao criar arquivo fstab${corPadrao}"
fi

echo ------------------------------------------------------------------------------------------------
echo --- Fim criando o arquivo fstab ----------------------------------------------------------------
echo ------------------------------------------------------------------------------------------------


sleep 1s