export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0

sudo service dbus restart
sudo service x11-common restart
gnome-shell --x11 -r