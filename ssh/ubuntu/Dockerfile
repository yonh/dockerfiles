FROM ubuntu:18.04
MAINTAINER yonh "azssjli@163.com"
ENV REFERSHED_AT 2015-02-28

#replace default sources.list
#ADD sources.list /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y git openssh-server && rm -rf /var/lib/apt/lists/*

RUN mkdir /var/run/sshd

EXPOSE 22
EXPOSE 80
EXPOSE 8081
EXPOSE 8082
EXPOSE 8083
EXPOSE 8084
EXPOSE 8085

CMD ["/usr/sbin/sshd", "-D"]
