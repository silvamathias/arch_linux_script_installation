#!/bin/bash

#pacotes para audio
echo Instalando pacotes para audio -----------------------------------------

pacman -S pulseaudio pulseaudio-bluetooth pulseaudio-jack pulseaudio-alsa sof-firmware pavucontrol

echo ----fim instalação pacotes para audio ---------------------------------

echo iniciando serviço -----------------------------------------------------
sulseaudio –start
