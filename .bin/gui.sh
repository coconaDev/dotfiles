export DISPLAY=`hostname`.mshome.net:0.0

sudo service dbus restart
sudo service x11-common restart
gnome-shell --x11 -r
