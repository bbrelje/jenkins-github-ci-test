FROM ubuntu:18.04

MAINTAINER Benjamin Brelje bbrelje@umich.edu


RUN  apt-get update && \
     apt-get install python3 python3-pip git -y && \
     apt install sudo

RUN groupadd -g 998 myappuser && \
    adduser --uid 998 --gid 998 --disabled-password --gecos "" myappuser  && \
    echo myappuser:linuxpassword | chpasswd && \
    usermod -aG sudo myappuser && \
    su myappuser

USER myappuser

RUN mkdir $HOME/install

COPY requirements.txt /home/myappuser/install/requirements.txt

RUN cd $HOME/install && \
    cat requirements.txt && \
    pip3 install -r requirements.txt