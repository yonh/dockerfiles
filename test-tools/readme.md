# test tools
you can run compile.sh compile all
```
bash compile.sh
```

## compile in ubuntu 
### Web Bench 1.5
```
wget http://home.tiscali.cz/~cz210552/distfiles/webbench-1.5.tar.gz
tar xvf webbench-1.5.tar.gz
cd webbench-1.5/
make && make install
```
### http_load
```
wget http://www.acme.com/software/http_load/http_load-14aug2014.tar.gz
tar xvf http_load-14aug2014.tar.gz
cd http_load-14aug2014
make && make install
```
### ApacheBench
you just need install the package apache2-utils
```
apt-get install apache2-tuils
```
### siege
```
apt-get install siege
```
### wrk
```
wget https://github.com/wg/wrk/archive/master.zip -O wrk.zip
unzip wrk.zip
cd wrk-master/
make
cp wrk /usr/local/bin/
```
