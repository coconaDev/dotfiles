# Proxyの入力
echo -n "Are you need proxy settings?(y/n):"
read isProxy
case $isProxy in
  [y] | '' )
    echo -n "SSID:"
    read SSID
    
    echo -n "Proxy address:"
    read ProxyAddress

    echo "set SSID $SSID" >> ~/.proxySetting
    echo "set ProxyAddress $ProxyAddress" >> ~/.proxySetting

    break;;
  [n] )
    break;;
  esac

# PowerShell に Proxyの設定 -> 別ファイルに

# apt のアップデート
sudo apt update
sudo apt -y upgrade

sudo apt -y install git

sudo apt -y install zsh
chsh -s /usr/bin/zsh

nerd_fonts() {
  git clone --branch=master --depth 1 https://github.com/ryanoasis/nerd-fonts.git
  cd nerd-fonts
  ./install.sh $1
  cd ..
  rm -rf nerd-fonts
}
# pywal
git clone https://github.com/dylanaraps/pywal
cd pywal
pip3 -y install --user .
cd ~
sudo apt install imagemagick

git clone https://github.com/YuSzmiya/dotfiles.git

