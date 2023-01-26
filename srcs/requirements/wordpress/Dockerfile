FROM debian:buster

COPY ./tools/.setting.sh /root/.setting.sh
COPY ./tools/start.sh /root/start.sh
COPY ./conf/host_ip.txt /root/host_ip.txt

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

# RUN set -x && \
# bash ~/.setting.sh

# RUN cat ~/host_ip.txt | bash ~/start.sh

ENTRYPOINT ["bash"]