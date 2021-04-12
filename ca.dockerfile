FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y openssh-server << "6\n44" 
RUN apt-get install -y inetutils-ping

RUN mkdir /root/public /root/private /root/signed
COPY ./keys/ca/ca /root/private 
COPY ./keys/ca/ca.pub /root/public

ENTRYPOINT ["/bin/bash", "-c", "while true; do sleep 5000; done"]
