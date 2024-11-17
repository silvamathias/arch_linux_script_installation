#!/bin/bash


#instalando o grub bios-legacy

echo instalando o grub BIOS-Legacy---------------------------------------
pacman -S grub

grub-install --target=i386-pc --recheck /dev/sda

grub-mkconfig -o /boot/grub/grub.cfg

echo ----fim instalação do grub -------------------------------------------