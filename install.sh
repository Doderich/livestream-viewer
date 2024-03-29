#!/bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

apt-get install streamlink
apt-get install vlc

mkdir /usr/local/livestream-viewer
cd /usr/local/livestream-viewer
wget -O /usr/local/livestream-viewer/start-livestream-viewer.sh www.google.de

echo "Please enter the livestream url"
read livestream_url

livestream=$livestream_url
echo ./start-livestream-viewer.sh | start- sed -i -e 's/$livestream_url/$livestream/g' | echo

/bin/bash /usr/local/livestream-viewer/start-livestream-viewer.sh

echo 
#[Desktop Entry]
#Type=Application
#Name=Livestream-Viewer
#Exec=/bin/bash /usr/local/livestream-viewer/start-livestream-viewer.sh $livestream_url