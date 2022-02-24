#!/bin/bash
# old test versiohn
nohup java -jar /home/ubuntu/jar/fileshare-0.0.1-SNAPSHOT.jar &>/dev/null &

# 2022.02.24 new version
source /home/ubuntu/jar/db_init.sh // needs to be executable! chmod +x db_init.sh 
nohup java -jar /home/ubuntu/jar/fileshare-0.0.1-SNAPSHOT.jar &>/dev/null &
# manual start: nohup java -jar /home/ubuntu/jar/artworkConsole.jar &>/dev/null &