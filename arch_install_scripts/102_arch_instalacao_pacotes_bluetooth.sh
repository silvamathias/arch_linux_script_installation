#!/bin/bash

#bluetooth
echo Instalando pacotes de Bluetooth ---------------------------------------

sleep 5s

pacman -S bluez bluez-utils gnome-bluetooth-3.0 blueman 

echo ----fim instalação pacotes de Bluetooth -------------------------------

echo iniciando o serviço ---------------------------------------------------

sleep 5s

systemctl enable bluetooth
