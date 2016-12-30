FROM alpine

# 不添加writev配置的话挂载目录修改文件后访问的还是旧的数据(我的mac是如此,linux无此情况,windows没测试过)
RUN apk add --update subversion

ADD init.sh /init.sh
RUN chmod +x /init.sh 

EXPOSE 3690

VOLUME /opt/svn

CMD [ "/usr/bin/svnserve", "--daemon", "--foreground", "--root", "/opt/svn" ]

