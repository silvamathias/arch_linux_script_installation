#!/bin/bash

#gerenciador de login
echo Instalando gerenciador de login ---------------------------------------
pacman -S sddm 

echo ----fim instalação do gerenciador de login ----------------------------

echo iniciando o serviço ---------------------------------------------------

systemctl enable sddm
