FROM alpine:3.8
MAINTAINER Yonh Lai <azssjli@163.com>
LABEL Description="A Simple apache/php image using alpine Linux for Web Apps"

#replace default sources.list
#ADD sources.list /etc/apk/repositories


# Setup apache and php
RUN apk --update add apache2 php7-apache2 curl \
	php7-pdo_mysql php7-mysqli php7-curl php7-dom php7-xml php7-json php7-ctype php7-mbstring php7-session php7-iconv php7-zlib php7-mcrypt \
	php7-bcmath php7-gd php7-openssl php7-zip php7-ftp php7-sqlite3 php7-tokenizer php7-simplexml php7-fileinfo php7-redis \
    && rm -f /var/cache/apk/* \
    && mkdir /run/apache2 \
    && sed -i 's/#LoadModule\ rewrite_module/LoadModule\ rewrite_module/' /etc/apache2/httpd.conf \
    && mkdir -p /opt/utils \
    && sed -i 's/upload_max_filesize = 2M/upload_max_filesize = 10M/g' /etc/php7/php.ini
# resolves iconv error
ENV LD_PRELOAD /usr/lib/preloadable_libiconv.so php
RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing gnu-libiconv

    
ADD start.sh /opt/utils/
RUN chmod +x /opt/utils/start.sh

RUN deluser apache && addgroup apache && adduser -S apache -G apache -u 1000
VOLUME /app

EXPOSE 80


ENTRYPOINT ["/opt/utils/start.sh"]
