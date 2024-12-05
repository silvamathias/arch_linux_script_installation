#!/bin/bash

#pacotes para usar o KDE Plasma
echo Instalando pacotes KDE Plasma ----------------------------------------------

sleep 5s

pacman -S plasma firefox

# Descomente a linha de baixo para instalar outros pacotes kde-applications (jogos e outros apps)
#pacman -S kde-applications



sleep 1s

systemctl enable sddm

echo ----fim instalação pacotes KDE Plasma --------------------------------------

sleep 5s
