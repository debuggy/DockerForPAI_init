From python:3.7.0-alpine3.7

# install git
RUN apt-get -y update && apt-get -y install git

WORKDIR /root

RUN git clone https://github.com/debuggy/DockerForPAI_init.git

WORKDIR /root/DockerForPAI_init
