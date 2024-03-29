#!/bin/bash

livestream_url="https://www.youtube.com/watch?v=dx-IEo_iCZA"
retry_time_s=60
while :; do streamlink $livestream_url best -p vlc -a "-f" --retry-streams $retry_time_s; sleep $retry_time_s; done
#echo $date >> /home/parus/projects/echo-log.txt