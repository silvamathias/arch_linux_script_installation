# Racing my Arch Linux with Hyprland

[Hyprland](https://hypr.land/) é um gerenciador de janelas com suporte ao **Wayland** e tem sido muito usado por este motivo, uma vez que o Wayland é mais recente, moderno e tem sido adotado por diversas distros como servidor de exibição padrão, substituindo assim o **Xorg** que é um servidor de janelas e trabalha em conjunto com o cliente **X11** que  por ser mais antigo já possui aplicação em diversos casos, incluindo jogos, área que era sensível para o Wayland no início por não ter boa compatibilidade com GPU's, porém hoje em dia já é possivel jogar usando Wayland sem grandes complicações graças ao Xwayland que veio para resolver este problema.

Este projeto foi desenvolvido usando como base o projeto [ML4W](https://www.ml4w.com/#videos). Eles possuiem canal no **YouTube** e repositório no [GitHub](https://github.com/mylinuxforwork/dotfiles). Com este vídeos e arquivos eu consegui deixar o *Hyprland* bem customizado, processo chamado de **"Rice"**. 

Antes de partir para uma customização mais profunda eu usei os vídeos do [Tecnosob](https://www.youtube.com/watch?v=xO7EGBtlS8k&list=PL1KsXytEKnV7otDeQBbjLKqY-eIFDJpGM).

## Lista de Aplicativos

Todos os aplicativos mencionados nesta parte estão nos scripts  para serem instalados. Lembrem-se que muitos dos aplicativos possuem subistitutos, como o *i3*, um gerenciador de janelas para **X11**, ao invés do **Hiprland** ou podem não ser necessários como o **QT5ct** caso não esteja usando aplicativos construidos com o **QT**

### Aplicativos padrões

Os aplicativos essenciais para se ter um Arch funcional está no início deste repositório. Aqui estão apenas os aplicativos importantes para se usar o *gerenciador de janelas Hyprland* de forma prática

A lista de aplicativos abaixo está em ordem de importância para deixá-lo funcional quando se deseja usar o **Hyprland**. O primeiro, logicamente, é o próprio Hyprland e a medida que se desce na lista, mais dinâmico e parecido as *Interfaces Gráficas* ficará seu sistema tratando-se de funcionalidades gráficas 

**Programa** | **Descrição**
:-----:|:-----
[Hyprland](https://hypr.land/)|Gerenciador de janelas
[Kitty](https://wiki.archlinux.org/title/Kitty_(Português))|Emulador de terminal
[Thunar](https://wiki.archlinux.org/title/Thunar)|Gerenciador de arquivos
[Waybar](https://github.com/Alexays/Waybar)|Barra de menu
[Rofi](https://github.com/davatorium/rofi)|Lançador de aplicativos
[Hyprpaper](https://github.com/hyprwm/hyprpaper)|Troca de papel de parede
[Waypaper](https://github.com/anufrievroman/waypaper)|*GUI* para trocar facilmente de papel-de-parede
[Wlogout](https://github.com/ArtsyMacaw/wlogout)|Menu de opçõs de energia do sistema (resligar; reiniciar; hibernar; etc)
[Swaylock](https://github.com/swaywm/swaylock)|Aplicativo para bloquear a tela

### Aplicativos Sugeridos

Os aplicativos abaixo são mais estéticos ou de gosto pessoal podendo ser ignorados se não tem interesse em construir um ambiente bem customizado, porém eles estão no script para serem instalados

**Programa** | **Descrição**
:-----:|:-----
[Matugen](https://github.com/InioX/matugen)|Uma ferramenta de geração de cores usado para criar paleta de cores baseada no papel de parede usado
[gtk-3.0 e gtk-4.0](https://wiki.archlinux.org/title/GTK_(Português))|Ferramenta para configurar a aparência das janelas desenvolvidas em GTK
[Qt5ct](https://wiki.archlinux.org/title/Qt)|Ferramenta para configurar a aparência das janelas desenvolvidas em QT
[Fastfetch](https://github.com/fastfetch-cli/fastfetch)|Visualizador de configuração do sistema
[btop](https://github.com/aristocratos/btop)|Monitor do sistema
[Swww](https://github.com/LGFae/swww)|Usado para realizar a troca de papel de parede de forma animada 

## Como Funciona?

Quando o projeto usado em sua plenitude, o projeto irá funcionar conforme descrito abaixo. O arquivo **set_wallpaper.sh** consentra o disparo de todas as automações.

![Esquema](/images/esquema.jpg)

1- Troque o papel-de-parede usando o Waypaper;

2- O Waypaper dispara um arquivo bash chamado *set_wallpaper.sh* que por sua vez:
- Chama o Matugen para criar palheta de cores do papel de parede selecionado
- Reinicia todos os programas para que usem a nova palheta de cores(configurado para Waybar, hyprland, Wlogout, Swaylock. Falta Fastfetch, kitty, GTK e QT, Firefox, rofi)
- Ordena o GTK ler novamente o próprio arquivo de configuração para manter as configurações antes da reinicialização realixada pelo Waypaper
- Salva o papel de parede em local e com nome conhecido para que o Wlogout possa usá-lo
- Criar um arquivo css com as cores da tabela para que seja usado por um HTML (salvo em .config/waybar/index.html) desenvolvido par facilitar a visualização das cores





