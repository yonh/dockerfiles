from alpine:3.7
run apk update
run apk add ruby ruby-dev make g++ && \
        gem install json:2.1.0 blade-translate:0.1.9 --no-document && \
        apk del g++ make ruby-dev && \
        rm -f /var/cache/apk/*
CMD ["bt"]
