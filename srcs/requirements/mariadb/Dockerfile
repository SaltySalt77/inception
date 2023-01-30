FROM debian:buster

COPY ./tools/init_db.sql /root/initial_db.sql
COPY ./tools/start.sh /root/start.sh

RUN set -x && \
apt-get update -y && \
apt-get upgrade -y && \
apt-get install -y mariadb-server && \
sed -i 's/bind-address            = 127.0.0.1/bind-address            \
= 0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf && \
chmod 777 /root/start.sh && \
chmod 777 /root/initial_db.sql


RUN service mysql start && \
mysql -u root -ptesting_ -e "source /root/initial_db.sql"

EXPOSE 3306

ENTRYPOINT ["mysqld"]