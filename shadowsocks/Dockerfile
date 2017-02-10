FROM alpine:3.4
MAINTAINER yonh "azssjli@163.com"
ENV REFERSHED_AT 2017-02-10

#replace default sources.list
ADD sources.list /etc/apk/repositories

RUN apk update \
	&& apk add --no-cache py-pip
run	pip install shadowsocks

add config /opt/config

CMD ["ssserver", "-c", "/opt/config"]

