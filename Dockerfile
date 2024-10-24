FROM ubuntu:24.04

RUN apt-get update && \
    apt-get install -y openssh-server sudo && \
    apt-get clean

RUN  mkdir /var/run/sshd && \ 
     echo 'ubuntu:pass' | chpasswd

EXPOSE 22
EXPOSE 80

CMD ["/usr/sbin/sshd", "-D"]

