#!/bin/bash
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install
cp *.el ~/.config/doom/.
cp doom-emacs.desktop ~/.local/share/applications/.
doom sync
doom upgrade
doom env
