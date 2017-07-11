#!/usr/bin/env bash

# copy locally modified tomcat8, which references /var/log/tomcat8 instead of
# /var/lib/tomcat8 for logging

chown -R tomcat8:adm /var/log/tomcat8
chown -R tomcat8:adm /usr/share/tomcat8
chown -R tomcat8:adm /var/lib/tomcat8/logs/

cp /host/tomcat8 /etc/init.d
su tomcat8 cp /host/power.xml /etc/tomcat8/Catalina/localhost
service tomcat8 start

# run forever so container doesn't exit right away
while true
do
  sleep 60
done

