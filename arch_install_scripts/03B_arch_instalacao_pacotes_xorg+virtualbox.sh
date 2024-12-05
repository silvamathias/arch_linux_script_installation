#!/bin/bash

#instalando interface gráfica (xorg + Nvidia)
echo instalando interface gráfica (xorg + Nvidia) --------------------------

sleep 5s

pacman -S xorg-server xorg-xinit xorg-apps mesa

sudo pacman -S virtualbox-guest-utils

echo ----fim da instalando interface gráfica (xorg + Nvidia) ---------------
sleep 5s
