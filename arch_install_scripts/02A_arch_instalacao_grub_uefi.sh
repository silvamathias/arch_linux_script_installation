#!/bin/bash


#instalando o grub uefi

echo instalando o grub UEFI--------------------------------------------------

sleep 5s

pacman -S grub efibootmgr

grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=arch_grub --recheck


grub-mkconfig -o /boot/grub/grub.cfg

echo ----fim instalação do grub -------------------------------------------
sleep 5s
