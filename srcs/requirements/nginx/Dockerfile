FROM debian:buster

COPY ./tools/.ssl.sh /root/.ssl.sh
COPY ./conf/default /root/default

RUN set -x && \
apt-get update -y && \
apt-get upgrade -y && \
apt-get install -y nginx && \
apt-get install -y openssl

RUN set -x && \
bash /root/.ssl.sh && \
rm /root/.ssl.sh

RUN set -x && \
mv /root/default /etc/nginx/sites-available/default && \
echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
chown -R www-data:www-data /var/lib/nginx

CMD [ "nginx" ]