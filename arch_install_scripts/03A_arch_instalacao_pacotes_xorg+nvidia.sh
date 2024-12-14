#!/bin/bash

#instalando interface gráfica (xorg + Nvidia)

echo ------------------------------------------------------------------------------------------------
echo --- Instalando interface gráfica - xorg + Nvidia -----------------------------------------------
echo ------------------------------------------------------------------------------------------------

sleep 2s

pacman -S xorg-server xorg-xinit xorg-apps mesa

pacman -S nvidia nvidia-settings

echo ------------------------------------------------------------------------------------------------
echo --- Fim instalando interface gráfica - xorg + Nvidia -------------------------------------------
echo ------------------------------------------------------------------------------------------------

sleep 1s
