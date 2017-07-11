FROM ubuntu:16.04

RUN apt-get update --fix-missing

RUN apt-get install -y wget curl

# install add-apt-repository
#RUN apt-get install -y python-software-properties
RUN apt-get install -y software-properties-common

# install Oracle Java 8
RUN \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java8-installer && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/oracle-jdk8-installer
ENV JAVA_HOME=/usr/lib/jvm/java-8-oracle
ADD local_policy.jar $JAVA_HOME/jre/lib/security
ADD US_export_policy.jar $JAVA_HOME/jre/lib/security

RUN apt-get update --fix-missing
RUN apt install -y tomcat8
RUN apt install -y vim

RUN mkdir /usr/share/tomcat8/temp
RUN ln -s /var/log/tomcat8 /var/lib/tomcat8/logs
#ln -s /var/log/tomcat8 $CATALINA_BASE/logs
#ln -s $CATALINA_BASE/logs /var/log/tomcat8


