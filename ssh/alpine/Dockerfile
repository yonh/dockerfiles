from alpine

run sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories && apk add openssh-server && ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key \
    && sed -i s/#PermitRootLogin.*/PermitRootLogin\ yes/ /etc/ssh/sshd_config \
    && ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key && ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key \
    && echo 'root:root'|chpasswd && mkdir /root/.ssh && chmod 700 /root/.ssh
ADD authorized_keys /root/.ssh/authorized_keys

#RUN sed -ie 's/#Port 22/Port 22/g' /etc/ssh/sshd_config
#RUN sed -ri 's/#HostKey \/etc\/ssh\/ssh_host_key/HostKey \/etc\/ssh\/ssh_host_key/g' /etc/ssh/sshd_config
#RUN sed -ir 's/#HostKey \/etc\/ssh\/ssh_host_rsa_key/HostKey \/etc\/ssh\/ssh_host_rsa_key/g' /etc/ssh/sshd_config
#RUN sed -ir 's/#HostKey \/etc\/ssh\/ssh_host_dsa_key/HostKey \/etc\/ssh\/ssh_host_dsa_key/g' /etc/ssh/sshd_config
#RUN sed -ir 's/#HostKey \/etc\/ssh\/ssh_host_ecdsa_key/HostKey \/etc\/ssh\/ssh_host_ecdsa_key/g' /etc/ssh/sshd_config
#RUN sed -ir 's/#HostKey \/etc\/ssh\/ssh_host_ed25519_key/HostKey \/etc\/ssh\/ssh_host_ed25519_key/g' /etc/ssh/sshd_config
#RUN /usr/bin/ssh-keygen -A
#RUN ssh-keygen -t rsa -b 4096 -f  /etc/ssh/ssh_host_key

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]