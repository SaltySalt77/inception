FROM debian:buster

COPY ./tools/.setting.sh /root/.setting.sh
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
apt-get -y install sendmail


RUN sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/\
listen = 0.0.0.0:9000/g' \
/etc/php/7.3/fpm/pool.d/www.conf

# RUN set -x && \
# bash ~/.setting.sh

RUN service php7.3-fpm start

ENTRYPOINT ["bash", "/root/start.sh"]