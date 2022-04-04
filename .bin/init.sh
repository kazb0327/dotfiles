#!/bin/bash

if [ "$(uname)" != "Darwin" ]; then
    echo "Not macOS!"
    exit 1
fi

# install xcode
xcode-select --install

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
