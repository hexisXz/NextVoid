#!/bin/sh


sudo xbps-install -Syu ; sudo xbps-install -S alsa-utils polybar alacritty btop bat exa ksh picom rofi xwallpaper xtools && xcheckrestart && sh <(curl -v -L https://raw.githubusercontent.com/hexisXz/hexfetch/main/install.sh) && curl -L -O "https://raw.githubusercontent.com/hexisXz/setwall/main/install.sh" && bash install.sh && sh <(curl -v -L https://raw.githubusercontent.com/hexisXz/ebps/main/install) && git clone https://github.com/hexisXz/NextVoid.git && mv NextVoid/herbstluftwm ~/.config/ && mv NextVoid/void/.kshrc ~/ && echo "ksh" >> ~/.bashrc && mv NextVoid/void/.vimrc ~/ && mkdir ~/.config/alacritty && mv NextVoid/void/alacritty.yml ~/.config/alacritty && mkdir ~/.config/polybar/ && mv NextVoid/void/config.ini ~/.config/polybar && mv NextVoid/void/picom.conf ~/.config && mkdir ~/stuff && mv NextVoid/void/rofi-power-menu ~/stuff && mv NextVoid/void/rofi-wifi-menu ~/stuff 

