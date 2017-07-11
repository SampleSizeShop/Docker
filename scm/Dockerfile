FROM phusion/baseimage

RUN apt-get update --fix-missing
RUN apt-get install -y git

RUN add-apt-repository -y ppa:chris-lea/node.js 
RUN apt-get update
RUN apt-get install -y nodejs
RUN npm install -g grunt-cli

# install add-apt-repository
#RUN apt-get install -y python-software-properties
RUN apt-get install -y software-properties-common

#sudo add-apt-repository ppa:webupd8team/java
#sudo apt-get update
#sudo apt-get install oracle-java7-installer

# install Oracle Java 7
RUN \
  echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java7-installer && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/oracle-jdk7-installer
ENV JAVA_HOME=/usr/lib/jvm/java-7-oracle

RUN mkdir /.ssh
ADD id_rsa_github /.ssh
ADD id_rsa_github.pub /.ssh

RUN mkdir /start-up
RUN mkdir /sample-size-shop
RUN echo 'while true; do sleep 60; done' > /start-up/forever.sh
RUN chmod +x /start-up/forever.sh
