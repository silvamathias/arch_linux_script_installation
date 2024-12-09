# arch_linux_script_installation

## Introdução

A forma que o [guia de instalação do Arch Linux](https://wiki.archlinux.org/title/Installation_guide_(Português)) foi elaborado, não reflete a idéia geral que fazemos de um sistema operacional, ainda mais se a pessoa só tem como referência o *Windows*.

Finalizando todo o passo-a-passo do guia de instalação você terá um sistema operacional com uma *interface de linha de comando* - **CLI**. Algo semelhante ao Ubuntu Server, que é destinado a servidores, quando o que temos em mente é um sistema completo como qualquer outra distro Linux ou até mesmo o Windows.

O [guia de instalação](https://wiki.archlinux.org/title/Installation_guide_(Português)) é bem completo e abrangente justamente para atender a qualquer necessidade de quem esteja instalando o *Arch*, porém isto gera um problema. É difícil de achar o que irá precisar e em alguns casos a dificuldade está em saber o que é preciso ou não. Quando eu instalei pela primeira vez fui pego de surpresa ao saber que não bastava instalar um [Ambiente Gráfico](https://wiki.archlinux.org/title/Desktop_environment_(Português)), era preciso instalar um servidor de exibição como o [xorg](https://wiki.archlinux.org/title/Xorg_(Português)) ou o [wayland](https://wiki.archlinux.org/title/Wayland_(Português)) e que o *Bluetooth* não vinha junto com o *ambientes gráficos*. Então este projeto funciona como uma apostila focada e objetiva, escluindo tudo o que pode gerar confuzão quando se tem o objetivo de obter um sistema linux tão usual quanto qualquer outra distro linux. Nesta analogia, o guia de instalação seria um livro de mais de 1000 páginas que o professor indica para acompanhar as aulas mas este projeto seria a apostila que contem o que será cobrado na prova.

Para fazer uma instalação tendo em mente qualquer distro linux para uso doméstico deve-se seguir a lista abaixo.

1. Pré-instalação (particionamento e formatação do disco). [documentação](https://wiki.archlinux.org/title/Installation_guide_(Português))
2. Instalação do sistema Básico. [documentação](https://wiki.archlinux.org/title/Installation_guide_(Português))
3. Instalação de um gerenciador de boot ([GRUB](https://wiki.archlinux.org/title/GRUB_(Português)) para simplificar)
4. Instalação de um servidor de exibição ( [Xorg](https://wiki.archlinux.org/title/Xorg_(Português)) ou  [wayland](https://wiki.archlinux.org/title/Wayland_(Português)): Se for jogar opte pelo Xorg)
5. Instalação da placa gráfica, caso tenha ([Nvidia](https://wiki.archlinux.org/title/NVIDIA_(Português)), [AMD](https://wiki.archlinux.org/title/AMDGPU), [Intel](https://wiki.archlinux.org/title/Intel_graphics), etc)
6. Instalação do ambiente gráfico ([Gnome, KDE, XFCE](https://wiki.archlinux.org/title/Desktop_environment_(Português)))
7. Instalação do gerenciador de exibição (Veja opções [aqui](https://wiki.archlinux.org/title/Display_manager_(Português)))
8. Instale/configure a [internet](https://wiki.archlinux.org/title/Dhcpcd) (opcional)
9. Instale/configure a rede [WI-FI](https://wiki.archlinux.org/title/Network_configuration_(Português)/Wireless_(Português)) (opcional)
10. Instale/configure o [Bluetooth](https://wiki.archlinux.org/title/Bluetooth) (opcional)
11. Instale tema do Arch ou outros temas (Opcional)

Você pode seguir este passo-a-passo, aproveitando que está com os links, para fazer sua instalação do *Arch Linux*. Em caso de dúvida olhe os script's da pasta "arch_install_scripts" para saber como instala/configura cada item. Os scripts contidos na pasta seguem esta lista de tarefas. Foram escritos para serem executados com o comando `bash` no momento da instalação diretamente do terminal.

OBS:

* saiba que por conta de diferença de hardware, a configuração contida aqui não funcione para o seu PC;
* Os grupo de pacotes dos ambientes gráficos podem ser muito abrangentes ou não. Como exemplo cito os gerenciadores de exibição que no grupo de instalação do **GNOME** já vem incluso o *GDM*, Já o *XFCE* por exemplo devesse instalar algum a parte;
* A instalação do programa é diferente da instalação do Ambiente gráfico do programa. Preste atenção nisto. As vezes o programa já está instalado e inclusive acessível pelo terminal mas o que está faltando é o ambiente gráfico para ser acessado através de janelas, e vice-versa. Bluetooth, Wi-Fi e Audio são bons exemplos onde esta situação pode ocorrer;
* Lembre-se de sempre ativar os serviços, Geralmente são ativados através do comando [systemctl start](https://wiki.archlinux.org/title/Systemd). Bluetooth, internet, [gerenciadores de exibição](https://wiki.archlinux.org/title/Display_manager_(Português)) são exemplos de serviços que devem ser ativados.

## Objetivo do Projeto

Criei este projeto para me ajudar a instalar o **Arch linux**. Com isto, evito de ter que escrever um monte de código, evitando que eu erre algum ou esqueça de algo, o que pode resultar em uma instalação incompleta. Existe ao menos uma forma oficial de instalar o arch usando recursos de auxílio; [Archinstall](https://wiki.archlinux.org/title/Archinstall_(Português)).

Outra alternativa seria instalar alguma distribuição linux baseada no Arch, O [Manjaro](https://manjaro.org/) acaba sendo a escolha de muitos.

Também aconselho a instalar primeiramente, mais de uma vez, em uma máquina virtual. Desta forma você elimina a ansiedade de colocar logo seu PC para funcionar e pode testar qual a configuração mais te agrada.

## Premissas

O projeto só dá a opção de instalação do [gerenciador de boot](https://wiki.archlinux.org/title/Arch_boot_process_(Português)#Gerenciador_de_boot) [GRUB](https://wiki.archlinux.org/title/GRUB_(Português)) pois é mais completo, como pode ser visto no link, e também o mais usado; e para servidor de exibição só traz a opção do [Xorg](https://wiki.archlinux.org/title/Xorg_(Português)), por ser mais antigo, muitos sistemas são compatíveis com ele, ao contrário do *Wayland* que ainda estão desenvolvendo código para suportá-lo.

Para a internet só existe a configuração da [internet cabeada](https://wiki.archlinux.org/title/Dhcpcd)) pois é a que eu uso no meu computador. Clique [aqui](https://wiki.archlinux.org/title/Network_configuration_(Português)/Wireless_(Português)) para ver a documentação de WI-FI. 

## Pré-Instalação

Acesse o [guia de instalação](https://wiki.archlinux.org/title/Installation_guide_(Português)) e faça os passos do item **1- Pré-instalação**

Obs: Utilise o [cfdisk](https://man.archlinux.org/man/cfdisk.8) para particionar o HD/SSD.

Coloque este projeto em algum pendrive ou em uma partição que que já esteja criada no disco e você queira usá-la em seu novo sistema. Na etapa 1.12, crie uma pasta com:

~~~shell
mkdir /mnt/mnt

mkdir /mnt/mnt/nome_da_pasta
~~~

Depois monte a unidade com este projeto dentro desta pasta.

Outra opção seria usar o git clone para dentro desta pasta ou abrir em um outro dispositivo e usá-lo como consulta mas este projeto foi pensado para ser usado como script bash

Depois do uso, vá até o arquivo */etc/fstab* e comente a linha referente a esta partição. Isto irá evitar erro ao iniciar o sistema caso esta linha tenha sido criada de uma forma errada. Use este guia de [como montar partição automaticamente](https://github.com/silvamathias/servidor_residencial?tab=readme-ov-file#montando_particao) para te ajudar a configurá-la corretamente.

## Instalação

Este projeto auxilia a partir do intem 2 do [guia de instalação](https://wiki.archlinux.org/title/Installation_guide_(Português))

## Entendendo os arquivos

Os arquivos aqui mencionados estão na pasta "arch_install_scripts"

para executar, faça:

`bash nome_do_arquivo.sh`

### Arquivo 01

É obrigatório. Instalação do sistema em sí e o kernel linux

### Demais arquivos iniciados com dezena seguido por letra

A dezena indica a etapa que se deve fazer. A letra indica que a etapa possui mais de uma opção.

Escolha um de cada para montar seu sistema levando em conta seu hardware e seu gosto pessoal. Só faz sentido escolher mais de um a etapa "04" e ter mais de um ambiente gráfico

OBS: Caso tenha escolhido o Gnome, pule a etapa "05" 

### Arquivos iniciados por centena

São pacotes opcionais ou que pode ser rodado depois caso decida usar bluetooth ou o audio não esteja funcionando

Obs: O pacote de audio instalado pelo script é o [PulseAudio](https://wiki.archlinux.org/title/PulseAudio)

## Finalizando a Instalação

Dentro da pasta "arch_install_scripts" possui outro arquivo **README.md** com mais unstruções sobre a instalação.

