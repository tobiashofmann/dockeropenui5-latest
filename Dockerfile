FROM debian
MAINTAINER Tobias Hofmann <tobi...@gmail.com>
RUN apt-get update && apt-get install -y apache2 wget unzip
RUN mkdir /var/www/html/v1
RUN wget https://openui5.hana.ondemand.com/downloads/openui5-runtime-1.32.9.zip -P /var/www/html
RUN unzip /var/www/html/openui5-runtime-1.32.9.zip -d /var/www/html/v1/
