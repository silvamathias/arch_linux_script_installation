# Informações Complementares Para a Instalação

Dica:  Use `ls cat README.md | grep passo_` para aparecer no terminal os códigos que deve utilizar

## Instalação básica

Entre os script's **00** e **01**, rode o código abaixo para acessar o sistema recem criado

~~~bash
arch-chroot /mnt #passo_00
~~~

## Instalação/configuração

Executes os cádigos a partir do item **02** de acordo com suas necessidades/preferências

## Finalizando configurações

Depois que instalou o sistema vá até o [guia de instalação](https://wiki.archlinux.org/title/Installation_guide_(Português)) utilizando outro dispositivo e complete a instalação

#### Itens 3.3 e 3.4

Os itens 3.3 e 3.4 do [guia de instalação](https://wiki.archlinux.org/title/Installation_guide_(Português)) podem ser feitos depois pelo ambiente gráfico, embora seja recomendado nesta fase.
Eu prefiro depois para concluir mais rápido a instalação.

#### item 3.7

O item 3.7 é para definir a senha do root

 `passwd #passo_01`

 ### Outras configurações

 Alterar o idioma do sistema também pode ser uma opção que é mais simples usando a interface gráfica.

#### Criar um usuário

`useradd -m -g users -G wheel,storage,power -s /bin/bash novo_usuario #passo_02 OBS: 1- troque novo_usuario pelo nome que queira 2- veja que este comando inclui o usuário aos grupos "users e wheel"`

#### Alterar a senha do usuário

`passwd novo_usuario #passo_03 OBS: troque novo_usuario pelo nome que queira`

#### Configure o SUDO

`EDITOR=nano visudo #passo_04 OBS: procure a linha “%wheel ALL=(ALL:ALL) ALL” e retire o "#" do início para permitir que os usuários pertencentes ao grupo "wheel" usem o sudo`

Mais detalhes de configuração em [SUDO](https://wiki.archlinux.org/title/Sudo_(Português))

#### Conectando a internet

`dhcpcd #passo_05`
