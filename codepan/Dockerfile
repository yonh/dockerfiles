from alpine:3.7

run apk update \
    && apk add yarn git \
    && mkdir /opt \
    && cd /opt \
    && git clone https://github.com/egoist/codepan \
    && cd codepan \
    && yarn

workdir /opt/codepan

cmd ["yarn", "poi"]
