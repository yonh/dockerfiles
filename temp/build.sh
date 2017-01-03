#!/bin/bash

cd 14.04-163
docker build -t yonh/temp:14.04-163 .
cd ..

cd debian-jessie
docker build -t yonh/temp:debian-jessie .
cd ..

cd alpine
docker build -t yonh/temp:alpine .
cd ..
