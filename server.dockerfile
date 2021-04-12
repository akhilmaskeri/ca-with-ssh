FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y openssh-server 
RUN apt-get install -y inetutils-ping

ADD ../keys/ca/ca.pub /etc/ssh/ca.pub

COPY server-setup.sh /tmp/setup.sh

ENTRYPOINT ["/bin/bash", "/tmp/setup.sh"]
