#!/bin/bash

#pacotes para usar o Gnome

echo ------------------------------------------------------------------------------------------------
echo --- Instalando pacotes Gnome -------------------------------------------------------------------
echo ------------------------------------------------------------------------------------------------

sleep 2s

pacman -S gnome gnome-themes-extra firefox

# Descomente a linha de baixo para instalar pacotes extras do gnome (jogos e outros apps)
pacman -S gnome-extra

echo ------------------------------------------------------------------------------------------------
echo --- Fim instalando pacotes Gnome ---------------------------------------------------------------
echo ------------------------------------------------------------------------------------------------

sleep 1s

echo ------------------------------------------------------------------------------------------------
echo --- Iniciando o serviço ------------------------------------------------------------------------
echo ------------------------------------------------------------------------------------------------

systemctl enable gdm
