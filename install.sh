#!/bin/bash

sudo apt-get install streamlink
sudo apt-get install vlc


url=$HOME/livestream-viewer 
mkdir $url
cd $url

wget -O $url/start-livestream-viewer.sh https://raw.githubusercontent.com/Doderich/livestream-viewer/main/start-livestream-viewer.sh
wget -O $url/auto-start-entry.txt https://raw.githubusercontent.com/Doderich/livestream-viewer/main/auto-start-entry.txt

echo "Please enter the livestream url"
#read livestream_url

livestream_url="https://www.youtube.com/UCA_oHukmsUBrp4GMoxG04Nw/live"

mkdir $HOME/.config/autostart
touch $HOME/.config/autostart/livestream-viewer.desktop
sed "s|HOME_STRING|${HOME}|g" $url/auto-start-entry.txt > $HOME/.config/autostart/livestream-viewer.desktop
cat $url/auto-start-entry.txt > $HOME/.config/autostart/livestream-viewer.desktop
#/bin/bash /usr/local/livestream-viewer/start-livestream-viewer.sh
chmod +x $HOME/.config/autostart/livestream-viewer.desktop

echo 
#[Desktop Entry]
#Type=Application
#Name=Livestream-Viewer
#Exec=/bin/bash /usr/local/livestream-viewer/start-livestream-viewer.sh $livestream_url