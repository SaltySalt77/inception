FROM debian:buster

COPY ./tools/.start_mysql.sh ~/.start.sh

RUN set -x && \
apt-get update -y && \
apt-get upgrade -y && \
apt-get install -y mariadb-server && \
sed -i 's/bind-address            = 127.0.0.1/bind-address            \
= 0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf && \
service mysql start

EXPOSE 3306

ENTRYPOINT ["bash", "~/.start.sh"]
# ENTRYPOINT ["service", "mysql", "start"]