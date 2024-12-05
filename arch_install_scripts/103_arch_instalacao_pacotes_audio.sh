#!/bin/bash

#pacotes para audio
echo Instalando pacotes para audio -----------------------------------------

sleep 5s

pacman -S pulseaudio pulseaudio-bluetooth pulseaudio-jack pulseaudio-alsa sof-firmware pavucontrol

echo ----fim instalação pacotes para audio ---------------------------------

echo iniciando serviço -----------------------------------------------------

sleep 5s

sulseaudio –start
