#!/bin/bash

# increment the :22 port number when starting multiple containers, ssh into each on its own port number
cp ../../cardpool-appservice-ws/target/CardpoolAppService#v1.war target/webapps
rm -rf target/logs
mkdir target/logs
docker run -d -p=443:443 -p=2222:22 -v $(pwd)/target/webapps:/opt/tomcat7/webapps \
  -v $(pwd)/../../cardpool-appservice-config/src/main/environments/docker:/opt/tomcat7/bhn/conf \
  -v $(pwd)/target/logs:/opt/tomcat7/logs \
   cardpool/appservice /bin/sh /startup/docker-startup.sh
