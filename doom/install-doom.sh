#!/bin/bash
sudo cp doom-emacs.desktop ~/.local/share/applications/.
sudo cp doomemacs.service /etc/systemd/system/.
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install
cp *.el ~/.config/doom/.
doom sync
doom upgrade
doom env
