#!/bin/bash

if [ "$(uname)" != "Darwin" ]; then
    echo "Not macOS!"
    exit 1
fi

# install powerline
pip3 install powerline-status
ln -sf ~/dotfiles/.config/powerline ~/.config/powerline

# copy fonts (ricty for powerline)
cp -f /opt/homebrew/opt/ricty/share/fonts/Ricty*.ttf ~/Library/Fonts/
fc-cache -vf

# install tmux plugins
ln -sf ~/dotfiles/.tmux ~/.tmux
