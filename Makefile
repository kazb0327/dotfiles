all: init link defaults brew

# set initial preference.
init:
	.bin/init.sh

# link dotfiles.
link:
	.bin/link.sh

# set macOS system preferences.
defaults:
	.bin/defaults.sh

# install macOS applications.
brew:
	eval "$(/opt/homebrew/bin/brew shellenv)"
	.bin/brew.sh

# post processing (after macOS applications installed)
post-process:
	.bin/post-process.sh
