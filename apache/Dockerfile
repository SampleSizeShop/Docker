FROM phusion/baseimage

RUN apt-get update --fix-missing

RUN apt-get install -y wget curl

RUN apt-get install -y apache2 apache2-utils
RUN a2enmod ssl
RUN a2enmod proxy
RUN a2enmod proxy_http
RUN a2enmod rewrite
RUN a2ensite default-ssl
RUN a2enmod headers

ADD proxy.txt /tmp
RUN sed '/<IfModule mod_proxy.c>/r /tmp/proxy.txt' /etc/apache2/mods-enabled/proxy.conf > /tmp/proxy.conf
RUN cp /tmp/proxy.conf /etc/apache2/mods-enabled/proxy.conf
RUN echo 'Header set Access-Control-Allow-Origin "*"' > /etc/apache2/conf-enabled/headers.conf

ADD redirect.txt /tmp
RUN sed '/<VirtualHost/r /tmp/redirect.txt' /etc/apache2/sites-enabled/000-default.conf > /tmp/000-default.conf
RUN cp /tmp/000-default.conf /etc/apache2/sites-enabled
