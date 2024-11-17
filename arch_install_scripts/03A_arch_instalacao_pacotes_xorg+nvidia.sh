#!/bin/bash

#instalando interface gráfica (xorg + Nvidia)
echo instalando interface gráfica (xorg + Nvidia) --------------------------

pacman -S xorg-server xorg-xinit xorg-apps mesa

pacman -S nvidia nvidia-settings

echo ----fim da instalando interface gráfica (xorg + Nvidia) ---------------