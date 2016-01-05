FROM debian
MAINTAINER Tobias Hofmann <tobi...@gmail.com>
RUN apt-get update && apt-get install -y \
  apache2 \
  wget \
  unzip \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
RUN mkdir /var/www/html/v1
RUN wget https://openui5.hana.ondemand.com/downloads/openui5-runtime-1.32.9.zip -P /var/www/html
RUN unzip -o /var/www/html/openui5-runtime-1.32.9.zip -d /var/www/html/
RUN rm /var/www/html/openui5-runtime-1.32.9.zip
EXPOSE 80
ENTRYPOINT /usr/sbin/httpd -D FOREGROUND
