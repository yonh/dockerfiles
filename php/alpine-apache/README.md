# alpine-apache-php
A simple and slim apache/php docker image using Alpine Linux

## Build
`docker build --no-cache -t yonh/php:alpine-apache .`

## Usage

`docker run --name=webapp -v /path/to/webapp:/app -p 80:80 [image-name]:latest`

The document root can be customized by using an env variable WEBAPP_ROOT to specify a subfolder containing the document app root.



`docker run --name=webapp -e "WEBAPP_ROOT=public/" -v /path/to/webapp:/app -p 80:80 yonh/php:alpine-apache`

## compose file

```
version: '2'

services:
  host_api:
    ports:
        - "8083:80"
    image: yonh/php:alpine-apache
    restart: always    
    volumes:
      - .:/app
    environment:
      - WEBAPP_ROOT=public

```




## Notes 
This container will change the owner of all your files inside /path/to/webapp to apache:apache in order to be compatible with the apache installation inside the container.
