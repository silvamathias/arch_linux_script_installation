#!/bin/bash

#bluetooth
echo Instalando pacotes de Bluetooth ---------------------------------------
pacman -S bluez bluez-utils gnome-bluetooth-3.0 blueman 

echo ----fim instalação pacotes de Bluetooth -------------------------------

echo iniciando o serviço ---------------------------------------------------

systemctl enable bluetooth