#!/bin/bash
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install
cp *.el ~/.config/doom/.
doom sync
doom upgrade
doom env
