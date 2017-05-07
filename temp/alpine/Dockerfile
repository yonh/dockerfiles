FROM alpine
MAINTAINER yonh "azssjli@163.com"
ENV REFERSHED_AT 2016-12-30

#replace default sources.list
ADD sources.list /etc/apk/repositories

RUN apk update \
	&& apk add --no-cache git subversion curl wget vim emacs \
	&& apk add --no-cache py-pip ruby-dev fish bash 


CMD ["/bin/fish"]

