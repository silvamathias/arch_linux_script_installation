#!/bin/bash

#pacotes para usar o Gnome
echo Instalando pacotes Gnome ----------------------------------------------

sleep 5s

pacman -S gnome gnome-themes-extra firefox

# Descomente a linha de baixo para instalar pacotes extras do gnome (jogos e outros apps)
#pacman -S gnome-extra

sleep 1s

systemctl enable gdm

echo ----fim instalação pacotes Gnome --------------------------------------
sleep 5s
