#!/bin/bash

livestream_url=https://www.youtube.com/channel/UCA_oHukmsUBrp4GMoxG04Nw/live

while getopts url flag
do
    case "${flag}" in
        u) livestream_url=${OPTARG};;
    esac
done

retry_time_s=60
while :; do streamlink $livestream_url best -p vlc -a "-f" --retry-streams $retry_time_s; sleep $retry_time_s; done