#!/bin/bash

if [ "$1" = "dev" ]; then
	gsed -i 's/# RUN userdel www-data/RUN userdel www-data/g' Dockerfile
	docker build -t tinystime/php-apache2:dev .
else
	gsed -i 's/^RUN userdel www-data/# RUN userdel www-data/g' Dockerfile
	docker build -t tinystime/php-apache2 .
fi
