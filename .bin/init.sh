#!/bin/bash

if [ "$(uname)" != "Darwin" ]; then
    echo "Not macOS!"
    exit 1
fi

# install xcode
xcode-select --install

# install Rosetta2
sudo softwareupdate --install-rosetta

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# add submodule
git submodule update --init --recursive

# setup prezto
ln -sf ~/dotfiles/.zprezto ~/.zprezto
