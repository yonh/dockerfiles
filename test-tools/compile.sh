#!/bin/bash
apt-get update
apt-get install -y gcc make apache2-utils unzip libssl-dev siege
tar xvf http_load-14aug2014.tar.gz
tar xvf webbench-1.5.tar.gz
unzip wrk.zip

cd http_load-14aug2014  
make && make install
cd ../
cd webbench-1.5
make && make install
cd ../
cd wrk-master
make
cp wrk /usr/local/bin/
cd ../

