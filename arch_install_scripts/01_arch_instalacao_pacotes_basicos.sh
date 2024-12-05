#!/bin/bash

#pacotes essenciais
echo Pacotes essenciais

sleep 5s

pacstrap /mnt base base-devel linux linux-firmware dhcpcd nano vim

sleep 1s

genfstab -U /mnt >> /mnt/etc/fstab

sleep 1s

arch-chroot /mnt

sleep 1s
#pacotes uteis e de internet
echo Instalando pacotes uteis e de internet --------------------------------

sleep 4s

pacman -S sudo file-roller dosfstools os-prober mtools network-manager-applet networkmanager wpa_supplicant wireless_tools dialog inxi htop neofetch

sleep 1s

systemctl enable dhcpcd

echo ----fim instalação pacotes uteis e de internet ------------------------

sleep 5s
