FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y openssh-server && \
    apt-get clean

RUN  mkdir /var/run/sshd && \ 
     echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config && \
     echo 'root:pass' | chpasswd

EXPOSE 22
EXPOSE 80

CMD ["/usr/sbin/sshd", "-D"]

