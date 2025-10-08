#!/bin/bash
echo ------------------------------------------------------------------------------------------------
echo --- Instalando o hyprland e pacotes complementáres ---------------------------------------------
echo ------------------------------------------------------------------------------------------------
sleep 2s

sudo pacman -S hyprland hyprpaper waybar waypaper hyprpicker hyprlock hyprcursor hypridle kitty swww ttf-jetbrains-mono-nerd firefox 

sudo pacman -S fastfetch thunar thunar-volman thunar-archive-plugin wofi swaylock  libinput  xdg-user-dirs hyprpolkitagent polkit gvfs xdg-user-dirs



echo ------------------------------------------------------------------------------------------------
echo --- Fim instalando pacotes hyprland ------------------------------------------------------------
echo ------------------------------------------------------------------------------------------------

sleep 2s

echo ------------------------------------------------------------------------------------------------
echo --- Instalando pacotes de temas ----------------------------------------------------------------
echo ------------------------------------------------------------------------------------------------

sudo pacman -S breeze breeze5 breeze-gtk papirus-icon-theme gtk4 gtk3 qt5-base qt6-base

echo ------------------------------------------------------------------------------------------------
echo --- Fim instalação pacotes de temas ------------------------------------------------------------
echo ------------------------------------------------------------------------------------------------