#!/bin/bash

#pacotes para usar o Gnome
echo Instalando pacotes Gnome ----------------------------------------------

sleep 5s

pacman -S gnome gnome-themes-extra firefox

# Descomente a linha de baixo para instalar pacotes extras do gnome (jogos e outros apps)
#pacman -S gnome-extra

echo ----fim instalação pacotes Gnome --------------------------------------

sleep 1s

echo iniciando o serviço ---------------------------------------------------

systemctl enable gdm
