#!/bin/bash

set -u
cd ~/dotfiles
# 実行場所のディレクトリを取得
THIS_DIR=$(cd $(dirname $0); pwd)

cd $THIS_DIR

echo "start setup..."

ln -nfs ~/dotfiles/.bashrc ~/.bashrc
ln -nfs ~/dotfiles/.zprofile ~/.zprofile
ln -nfs  ~/dotfiles/.zshrc ~/.zshrc

echo "Installed"

cat << END

**************************************************
DOTFILES SETUP FINISHED! bye.
**************************************************

END
