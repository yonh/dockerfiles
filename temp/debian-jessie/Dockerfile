FROM debian:jessie
MAINTAINER yonh "azssjli@163.com"
ENV REFERSHED_AT 2016-12-30

#replace default sources.list
ADD sources.list /etc/apt/sources.list

RUN apt-get update \
	&& apt-get install -y git subversion curl wget vim emacs ruby-dev python-pip \
	&& rm -rf /var/lib/apt/lists/*


CMD ["/bin/bash"]

