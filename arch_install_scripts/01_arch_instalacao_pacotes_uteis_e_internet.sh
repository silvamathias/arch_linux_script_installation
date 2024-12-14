#!/bin/bash

#pacotes essenciais

echo ------------------------------------------------------------------------------------------------
echo --- Instalando pacotes uteis e de internet -----------------------------------------------------
echo ------------------------------------------------------------------------------------------------

sleep 1s

pacman -S sudo file-roller dosfstools os-prober mtools network-manager-applet networkmanager wpa_supplicant wireless_tools dialog inxi htop neofetch

echo ------------------------------------------------------------------------------------------------
echo --- Fim instalando pacotes uteis e de internet -------------------------------------------------
echo ------------------------------------------------------------------------------------------------

sleep 1s

echo ------------------------------------------------------------------------------------------------
echo --- Habilitando internet - dhcpcd --------------------------------------------------------------
echo ------------------------------------------------------------------------------------------------

systemctl enable dhcpcd
