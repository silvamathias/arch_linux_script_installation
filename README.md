# arch_linux_script_installation

## Introdução

A fomra que o [guia de instalação do Arch Linux](https://wiki.archlinux.org/title/Installation_guide_(Português)) foi elaborado não reflete a idéia geral que fazemos de um sistema operacional, ainda mais se a pessoa só tem como referência o **Windows**.

Finalizando todo o passo-a-passo do guia de instalação você terá um sistema operacional com uma *interface de linha de comando* - **CLI**. Algo semelhante ao Ubuntu Server, que é destinado a servidores, quando o que temos em mente um sistema completo como qualquer outra distro Linux ou até mesmo o Windows.

O [guia de instalação](https://wiki.archlinux.org/title/Installation_guide_(Português)) é bem completo e abrangente justamente para atender a qualquer necessidade de quem esteja instalando, porém isto gera um problema. É difícil de achar o que irá precisar e em alguns casos a dificuldade está em saber o que é preciso ou não. Quando eu instalei pela primeira vez fui pego se surpresa ao saber que não bastava instalar um [Ambiente Gráfico](https://wiki.archlinux.org/title/Desktop_environment_(Português)), era preciso instalar um servidor de exibição como o [xorg](https://wiki.archlinux.org/title/Xorg_(Português)) ou o [wayland](https://wiki.archlinux.org/title/Wayland_(Português)) e que o *Bluetooth* não vinha junto com algum outro grupo de pacotes como os dos *ambientes gráficos*. Então este projeto funciona como uma apostila focada e objetiva, escluindo tudo o que pode gerar confuzão quando se tem o objetivo de obter um sistema linux tão usual quanto qualquer outra distro linux.

Criei este projeto para me ajudar a instalar o **Arch linux**. Com isto evito de ter que escrever um monte de código, evitando que eu erre algum ou esqueça de algo, o que pode resultar em uma instalação incompleta. Existe ao menos uma forma oficial de instalar o arch usando recursos de auxílio; [Archinstall](https://wiki.archlinux.org/title/Archinstall_(Português)).

Outras alternativas seria instalar algum distribuição linux baseada no Arch, O [Manjaro](https://manjaro.org/) acaba sendo a escolha de muitos.

## Premissas

O projeto só dá a opção de instalação do [gerenciador de boot](https://wiki.archlinux.org/title/Arch_boot_process_(Português)#Gerenciador_de_boot) [GRUB](https://wiki.archlinux.org/title/GRUB_(Português)) pois é mais completo, como pode ser visto no link, e também o mais usado; e o servidor de exibição só traz a opção do [Xorg](https://wiki.archlinux.org/title/Xorg_(Português)), por ser mais antigo, muitos sistemas são compatíveis com ele, ao contrário do *Wayland* que ainda estão desenvolvendo código para suportá-lo.

## Pré-Instalação

Acesse o [guia de instalação](https://wiki.archlinux.org/title/Installation_guide_(Português)) e faça os passos do item **1- Pré-instalação**

Obs: Utilise o [cfdisk](https://man.archlinux.org/man/cfdisk.8) para particionar o HD/SSD.

Coloque este projeto em algum pendrive ou em uma partição que que já esteja criada no disco e você queira usá-la em seu novo sistema. Na etapa 1.12, crie uma pasta com `mkdir /mnt/mnt/nome_da_pasta` e depois monte a unidade com este projeto dentro desta pasta.
Outra opção seria usar o git clone para dentro desta pasta ou abrir em um outro dispositivo e usá-lo como consulta mas este projeto foi pensado para ser usado como script bash

Depois do uso, vá até o arquivo */etc/fstab* e comente a linha referente a esta partição. Isto irá evitar erro ao iniciar o sistema caso esta linha tenha sido criada de uma forma errada. Use este guia de [como montando particao automaticamente](https://github.com/silvamathias/servidor_residencial?tab=readme-ov-file#montando_particao) para te ajudar a configurá-la corretamente.

## Instalação

Este projeto auxilia a partir do intem 2 do [guia de instalação](https://wiki.archlinux.org/title/Installation_guide_(Português))

## Entendendo os arquivos

### Arquivo 01

É obrigatório. Instalação do sistema em sí e o kernel linux

### Demais arquivos iniciados com dezena seguido por letra

A dezena indica a etapa que se deve fazer. A letra indica que a etapa possui mais de uma opção.

Escolha um de cada para montar seu sistema levando em conta seu hardware e seu gosto pessoal. Só faz sentido escolher mais de um a etapa "04" e ter mais de um ambiente gráfico

OBS: Caso tenha escolhido o Gnome, pule a etapa "05" 

### Arquivos iniciados por centena

São pacotes opcionais ou que pode ser rodado depois caso decida usar bluetooth ou o audio não esteja funcionando

Obs: O pacote de audio instalado pelo script é o [PulseAudio](https://wiki.archlinux.org/title/PulseAudio)

