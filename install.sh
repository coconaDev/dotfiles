#!/bin/bash

set -u
cd ~/dotfiles
# 実行場所のディレクトリを取得
THIS_DIR=$(cd $(dirname $0); pwd)

cd $THIS_DIR

echo "start setup..."

for f in * .*;
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".gitignore" ]] && continue
    [[ "$f" == "README.md" ]] && continue
    [[ "$f" == "install.sh" ]] && continue
    [[ "$f" == "LICENSE" ]] && continue
    [[ "$f" == "wallpaper-images" ]] && continue
    [[ "$f" == "." ]] && continue
    [[ "$f" == ".." ]] && continue
    [[ "$f" == ".bin" ]] && continue

    ln -snf ${THIS_DIR}/"${f}" $HOME/"${f}"
    echo "Installed $f"

done

cat << END

**************************************************
DOTFILES SETUP FINISHED! bye.
**************************************************

END
