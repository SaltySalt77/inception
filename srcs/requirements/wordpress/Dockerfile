FROM debian:11.5

COPY ./tools/start.sh /root/start.sh

RUN set -x && \
apt-get update -y && \
apt-get upgrade -y && \
apt-get install -y mariadb-client && \
apt-get install -y php7.3 && \
apt-get install -y php-fpm && \
apt-get install -y php-cli && \
apt-get install -y wget && \
apt-get install -y curl && \
apt-get install -y php-mysql && \
apt-get install -y php-mbstring && \
apt-get install -y php-xml && \
apt-get install -y sendmail &&\
apt-get install -y sudo

WORKDIR /var/www/html/wordpress

RUN sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/\
listen = 0.0.0.0:9000/g' \
/etc/php/7.3/fpm/pool.d/www.conf

RUN chmod o+w /var/www/html && \
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
chmod +x wp-cli.phar && \
mv wp-cli.phar /usr/local/bin/wp && \
service php7.3-fpm start

CMD ["bash", "/root/start.sh"]