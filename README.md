# dotfiles

scripts for set up macOS.

## 参考記事

以下の記事を参考にさせていただきました。
https://dev.classmethod.jp/articles/joined-mac-dotfiles-customize/

## Install
```
$ cd ~/ && git clone https://github.com/kazb0327/dotfiles
$ cd ~/dotfiles && make
```

## Setup Applications

### iTerm2
```
1. Press "command + ," on iterm2.
2. Click "General" tab.
3. Click "Preferences" tab.
4. Turn on "Load preference from a custom folder or URL."
5. Enter "~/dotfiles/iterm2/com.googlecode.iterm2.plist".
6. Execute "sudo killall cfprefsd".
```
