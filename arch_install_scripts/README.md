# Informações Complementares Para a Instalação

Dica:  Use `ls cat README.md | grep passo_` para aparecer no terminal os códigos que deve utilizar

## Instalação básica

Entre os script's **00** e **01**, rode o código abaixo para acessar o sistema recém criado

~~~bash
arch-chroot /mnt #passo_00
~~~

## Instalação/configuração

Executes os códigos a partir do item **02** de acordo com suas necessidades/preferências

OBS: Caso tenha escolhido instalar o *Hyprland*, instale também o yay para facilitar a instalação dos pacotes *AUR*. Na seção [Instalando pacote AUR](#aur) está descrito como instalar o yay através do *AUR*. 
 
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

<a id="aur"></a>

## Instalando pacote AUR

Todos os pacotes [AUR](https://wiki.archlinux.org/title/Arch_User_Repository_(Português)) (Arch User Repository) seguem o mesmo passo-a-passo para instalação. Para exemplificar  será exemplificado como a instalação do pacote yay através do repositório AUR. Esta etapa pode ser feita quando já estiver usando algum gerenciador de janelas ou ambiente gráfico. Se preferir use o comando marcado como **passo_06**

O [yay](https://aur.archlinux.org/packages/yay) é um [AUR Helper](https://wiki.archlinux.org/title/AUR_helpers_(Português)) que serve para facilitar a instalação dos pacotes AUR. Uma vez instalado basta usá-lo para instalar os demais pacotes AUR o que fará todo o processo mais ágil.

### Instalando o yay

Será preciso do pacote *git*. A instalação do git está npo arquivo *01_arch_instalacao_pacotes_uteis_e_internet.sh*. Caso não tenha instalado basta usar o comando:

~~~shell
sudo pacman -S git
~~~

Já com o git devidamente instalado, Vá até a página do pacote [yay](https://aur.archlinux.org/packages/yay), nela terá o *URL* do repositório git com o título de *Git Clone URL:*. Basta criar para que seja copiado para a área de transferência. 

Abra o terminal, vá até uma pasta ou crie uma para que possa clonar o repositório para dentro dela. use o comando `git clone <URL copiado do repositório>`

Se estiver ainda sem ambiente gráfico instalado use o comando abaixo.

~~~shell
git clone https://aur.archlinux.org/yay.git #passo_06 - Caso esteja sem GUI e queira instalar o yay
~~~

use o comando `cd` para entrar na pasta. O usuário **root** não é autorizado rodar o comando `makepkg` para compilar o pacote, então use o comando `su novo_usuario` onde *novo_usuario* deve ser substituido pelo usuário criado no passo 5. Este comando fará você logar com o usuário informado. Depois use o comando abaixo como usuário normal. 

~~~shell
makepkg -si #passo_07 - após entrar na pasta do projeto git baixado
~~~

Este comando irá compilar o pacote. Acompanhe o processo pois será necessário responder algumas perguntas e confirmar a instalação com sua senha.

Agora com o yay instalado basta abrir o terminal e digitar `yay -S <pacote AUR>`. O arquivo *105_instalando_via_YAY_demais_pacotes_para_HYPRLAND* pode ser executado para instalar os pacotes lá presente usando o yay.







