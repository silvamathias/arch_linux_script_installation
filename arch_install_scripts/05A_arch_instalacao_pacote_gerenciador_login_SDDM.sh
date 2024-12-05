#!/bin/bash

#gerenciador de login
echo Instalando gerenciador de login ---------------------------------------

sleep 5s

pacman -S sddm 

echo ----fim instalação do gerenciador de login ----------------------------

echo iniciando o serviço ---------------------------------------------------

sleep 5s

systemctl enable sddm
