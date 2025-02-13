#!/bin/bash


#instalando o grub bios-legacy

echo ------------------------------------------------------------------------------------------------
echo --- Instalando o grub BIOS-Legacy --------------------------------------------------------------
echo ------------------------------------------------------------------------------------------------

sleep 2s

pacman -S grub

grub-install --target=i386-pc --recheck /dev/sda

grub-mkconfig -o /boot/grub/grub.cfg

echo ------------------------------------------------------------------------------------------------
echo --- Fim instalando o grub BIOS-Legacy ----------------------------------------------------------
echo ------------------------------------------------------------------------------------------------

sleep 1s
