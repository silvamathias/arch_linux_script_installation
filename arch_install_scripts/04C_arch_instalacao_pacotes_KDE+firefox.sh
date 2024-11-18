#!/bin/bash

#pacotes para usar o KDE Plasma
echo Instalando pacotes KDE Plasma ----------------------------------------------

pacman -S plasma firefox

# Descomente a linha de baixo para instalar outros pacotes kde-applications (jogos e outros apps)
#pacman -S kde-applications

echo ----fim instalação pacotes KDE Plasma --------------------------------------

systemctl enable sddm