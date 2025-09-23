#!/bin/bash

corPadrao="\033[0m"
purple="\033[0;35m"

#temas do archlinux
echo ------------------------------------------------------------------------------------------------
echo --- Instalando temas do archlinux  -------------------------------------------------------------
echo ------------------------------------------------------------------------------------------------

sleep 2s

pacman -S keycloak-archlinux-theme archlinux-wallpaper

echo ------------------------------------------------------------------------------------------------
echo --- Fim instalando temas do archlinux  ---------------------------------------------------------
echo ------------------------------------------------------------------------------------------------

sleep 1s

echo -e Existem temas do Arch que são instalados via ${purple}AUR${corPadrao}. Abaixo algumas sugestões:

echo arc-gtk-theme 
echo arc-icon-theme 
echo arc-solid-gtk-theme