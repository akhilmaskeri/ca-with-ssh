FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y openssh-server << "6\n44" 
RUN apt-get install -y inetutils-ping


ENTRYPOINT ["/bin/bash", "-c", "while true; do sleep 5000; done"]
