#!/bin/bash

#pacotes essenciais
echo Pacotes essenciais
pacstrap /mnt base base-devel linux linux-firmware dhcpcd nano vim

genfstab -U /mnt >> /mnt/etc/fstab

arch-chroot /mnt


#pacotes uteis e de internet
echo Instalando pacotes uteis e de internet --------------------------------

pacman -S sudo file-roller dosfstools os-prober mtools network-manager-applet networkmanager wpa_supplicant wireless_tools dialog inxi htop neofetch

systemctl enable dhcpcd

echo ----fim instalação pacotes uteis e de internet ------------------------

