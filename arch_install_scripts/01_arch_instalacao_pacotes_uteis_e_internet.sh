#!/bin/bash

corPadrao="\033[0m"
vermelho="\033[0;31m"
verde="\033[0;32m"
purple="\033[0;35m"
amarelo="\033[1;33m"

#pacotes essenciais

echo ------------------------------------------------------------------------------------------------
echo --- Instalando pacotes uteis e de internet -----------------------------------------------------
echo ------------------------------------------------------------------------------------------------

sleep 1s

pacman -S sudo git btop file-roller dosfstools os-prober mtools network-manager-applet networkmanager wpa_supplicant wireless_tools dialog inxi
var_r=$?

if [ $var_r -eq 0 ]; then
    echo -e "${verde} Pacotes instalados com sucesso: $var_r!${corPadrao}"
else
    echo -e "${vermelhoClaro}ERRO! Pacotes não instalado!${corPadrao}"
fi

echo ------------------------------------------------------------------------------------------------
echo --- Fim instalando pacotes uteis e de internet -------------------------------------------------
echo ------------------------------------------------------------------------------------------------

sleep 1s

echo ------------------------------------------------------------------------------------------------
echo --- Habilitando internet - dhcpcd --------------------------------------------------------------
echo ------------------------------------------------------------------------------------------------

systemctl enable dhcpcd
