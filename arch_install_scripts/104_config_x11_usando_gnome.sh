#!/bin/bash

# Esta funcionalidade deve ser executada para cada usuário (por conta do caminho usando '~')
# Mais detalhes no link abaixo
# https://wiki.archlinux.org/title/GNOME

echo Esta funcionalidade deve ser executada para cada usuário (por conta do caminho usando '~')

sleep 5s

echo 'export XDG_SESSION_TYPE=x11' >> ~/.xinitrc
echo 'export GDK_BACKEND=x11' >> ~/.xinitrc
echo 'exec gnome-session' >> ~/.xinitrc
