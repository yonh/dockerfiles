FROM ubuntu:14.04
MAINTAINER yonh "azssjli@163.com"
ENV REFERSHED_AT 2016-12-30

#replace default sources.list
ADD sources.list /etc/apt/sources.list

RUN apt-get update && apt-get install -y git curl wget vim ruby-dev python-pip

CMD ["/bin/bash"]

