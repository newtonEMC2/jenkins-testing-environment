FROM ubuntu:16.04

RUN apt-get update && \
    apt-get -y install ssh 

RUN sed -i '/^#/!s/PermitRootLogin .*/PermitRootLogin yes/' /etc/ssh/sshd_config
# RUN service ssh restart

RUN echo "root:root"|chpasswd

CMD service ssh start && tail -f /dev/null





