#!/bin/bash

# 基本系

## 自動大文字の無効化
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

# Dock関連

# Finder関連

## デフォルトで隠しファイルを表示する
defaults write com.apple.finder AppleShowAllFiles -bool true

## 全ての拡張子のファイルを表示
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

## ステータスバーを表示
defaults write com.apple.finder ShowStatusBar -bool true

## パスバーを表示
defaults write com.apple.finder ShowPathbar -bool true

## 名前で並べ替えを選択時にディレクトリを前に置くようにする
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

## 検索時にデフォルトでカレントディレクトリを検索
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

## USBやネットワークストレージに.DS_Storeファイルを作成しない
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

## Show the ~/Library folder
chflags nohidden ~/Library

## Show the /Volumes folder
sudo chflags nohidden /Volumes

# SystemUIServer

## メニューバーの日付表示
defaults write com.apple.menuextra.clock DateFormat -string 'EEE d MMM HH:mm'

## メニューバーのバッテリーレベル表示
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

for app in "Dock" \
    "Finder" \
    "SystemUIServer"; do
    killall "${app}"
done
