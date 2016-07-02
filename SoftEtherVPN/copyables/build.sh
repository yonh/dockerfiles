#!/bin/bash

apt-get update \
  && apt-get install -y unzip make gcc libreadline-dev libssl-dev libncurses5-dev

git clone --depth 1 https://github.com/SoftEtherVPN/SoftEtherVPN.git /usr/local/src/vpnserver

cd /usr/local/src/vpnserver

cp src/makefiles/linux_64bit.mak Makefile
patch -p1 < ../AES-256-CBC.patch
make

cp bin/vpnserver/vpnserver /opt/vpnserver
cp bin/vpnserver/hamcore.se2 /opt/hamcore.se2
cp bin/vpncmd/vpncmd /opt/vpncmd

rm -rf /usr/local/src/vpnserver

gcc -o /usr/local/sbin/run /usr/local/src/run.c

rm /usr/local/src/run.c

apt-get remove libreadline-dev libncurses5-dev libssl-dev \
  && apt-get clean
  
rm -rf /var/log/* /var/cache/apt/* /var/lib/apt/*

exit 0
