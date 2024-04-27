#!/bin/bash

# Überprüfen Sie, ob streamlink installiert ist
streamlink --version > /dev/null 2>&1
streamlink_status=$?

if [ $streamlink_status -ne 0 ]; then
    echo "Streamlink ist nicht installiert. Bitte installieren Sie Streamlink."
    sudo apt-get install streamlink
fi

# Überprüfen Sie, ob der Livestream verfügbar ist
livestream_url=https://www.youtube.com/UCA_oHukmsUBrp4GMoxG04Nw/live

# Überprüfen Sie den Livestream
streamlink $livestream_url > /dev/null 2>&1
livestream_status=$?


now=$(date)
echo "Livestream Status: $livestream_status; $now" >> /tmp/livestream_status.log


# Wenn einer der Streams nicht verfügbar ist, starten Sie das System neu
if [ $livestream_status -ne 0 ]; then
    echo "Ein Stream ist offline. Das System wird neu gestartet."
    reboot
fi 