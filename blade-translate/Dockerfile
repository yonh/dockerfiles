from alpine:3.7
# 
run apk update
run apk add ruby ruby-dev make g++ && \
        gem install json blade-translate --no-document && \
        apk del g++ make ruby-dev && \
        rm -f /var/cache/apk/*
CMD ["bt"]
