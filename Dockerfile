FROM debian
MAINTAINER Tobias Hofmann <tobi...@gmail.com>
RUN apt-get update && apt-get install -y \
  apache2 \
  wget \
  unzip \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
# 1.32.10
RUN wget https://openui5.hana.ondemand.com/downloads/openui5-runtime-1.32.10.zip -P /var/www/html
RUN unzip -o /var/www/html/openui5-runtime-1.32.10.zip -d /var/www/html/
RUN rm /var/www/html/openui5-runtime-1.32.10.zip
# 1.30.11
RUN mkdir /var/www/html/1.30.11
RUN wget https://openui5.hana.ondemand.com/downloads/openui5-runtime-1.30.11.zip -P /var/www/html
RUN unzip -o /var/www/html/openui5-runtime-1.30.11.zip -d /var/www/html/1.30.11
RUN rm /var/www/html/openui5-runtime-1.30.11.zip
# 1.28.26
RUN mkdir /var/www/html/1.28.26
RUN wget https://openui5.hana.ondemand.com/downloads/openui5-runtime-1.28.26.zip -P /var/www/html
RUN unzip -o /var/www/html/openui5-runtime-1.28.26.zip -d /var/www/html/1.28.26
RUN rm /var/www/html/openui5-runtime-1.28.26.zip
# 1.26.16
RUN mkdir /var/www/html/1.26.16
RUN wget https://openui5.hana.ondemand.com/downloads/openui5-runtime-1.26.16.zip -P /var/www/html
RUN unzip -o /var/www/html/openui5-runtime-1.26.16.zip -d /var/www/html/1.26.16
RUN rm /var/www/html/openui5-runtime-1.26.16.zip
EXPOSE 80
ENTRYPOINT /usr/sbin/httpd -D FOREGROUND