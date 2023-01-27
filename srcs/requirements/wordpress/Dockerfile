FROM debian:buster

COPY ./tools/.setting.sh /root/.setting.sh
COPY ./conf/wp-config.php /root/wp-config.php
COPY ./tools/start.sh /root/start.sh

RUN set -x && \
apt-get update -y && \
apt-get upgrade -y && \
apt-get -y install mariadb-client && \
apt-get -y install php7.3 && \
apt-get -y install php-fpm && \
apt-get -y install php-cli && \
apt-get -y install wget && \
apt-get -y install curl && \
apt-get -y install php-mysql && \
apt-get -y install php-mbstring && \
apt-get -y install php-xml && \
apt-get -y install sendmail && \
apt-get -y install sudo

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
	chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/bin/wp

RUN sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/\
listen = 0.0.0.0:9000/g' \
/etc/php/7.3/fpm/pool.d/www.conf &&\
sed -i 's/;clear_env = no/clear_env = no/g' \
/etc/php/7.3/fpm/pool.d/www.conf

WORKDIR /var/www/html

RUN wget https://wordpress.org/latest.tar.gz && \
	tar -xvf latest.tar.gz

RUN mkdir /run/php

RUN bash /root/.setting.sh

ENTRYPOINT ["bash", "/root/.setting.sh"]