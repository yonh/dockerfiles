FROM ubuntu:14.04
MAINTAINER yonh "azssjli@163.com"
ENV REFERSHED_AT 2016-10-14

#replace default sources.list
ADD sources.list /etc/apt/sources.list

RUN apt-get update && \
	apt-get -y install debmirror
run mkdir /home/UbuntuMirror

ADD mirrorbuild.sh /usr/local/bin/mirrorbuild.sh
run chmod +x /usr/local/bin/mirrorbuild.sh

run mkdir /home/mirrorkeyring && \
	gpg --no-default-keyring --keyring /home/mirrorkeyring/pubring.gpg --import /usr/share/keyrings/ubuntu-archive-keyring.gpg && \
	gpg --no-default-keyring --keyring /home/mirrorkeyring/trustedkeys.gpg --import /usr/share/keyrings/ubuntu-archive-keyring.gpg


VOLUME /home/UbuntuMirror

CMD ["/bin/bash"]

