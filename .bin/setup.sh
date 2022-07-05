#!/bin/bash
#=================================================
# apt update
#=================================================
yes | sudo apt update
yes | sudo apt upgrade

#=================================================
# change the folder name to English
#=================================================
env LANGUAGE=C LC_MESSAGES=C xdg-user-dirs-gtk-update

#====================================================================
# 文字化け対策
#====================================================================
gsettings set org.gnome.gedit.preferences.encodings auto-detected "['UTF-8','CURRENT','SHIFT_JIS','EUC-JP','ISO-2022-JP','UTF-16']"
gsettings set org.gnome.gedit.preferences.encodings shown-in-menu "['UTF-8','SHIFT_JIS','EUC-JP','ISO-2022-JP','UTF-16']"

#====================================================================
# Ubuntu Web Apps(Gmail/Amazon/Twitter/Facebook)削除
#====================================================================
yes | sudo apt remove unity-webapps-common xul-ext-unity xul-ext-websites-integration

#====================================================================
# software install
#====================================================================
yes | sudo apt install curl
yes | sudo apt install imagemagick
yes | sudo apt install zsh
yes | sudo apt install neovim

#====================================================================
# C languege setting
#====================================================================
yes | sudo apt install gcc

