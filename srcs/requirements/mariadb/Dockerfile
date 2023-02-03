FROM debian:buster

RUN set -x && \
apt-get update && \
apt-get upgrade -y && \
apt-get install -y mariadb-server

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/start.sh /root/start.sh

ENV MYSQL_ROOT_PASSWORD=psswd1234_
ENV MYSQL_DATABASE=wordpress_db
ENV MYSQL_ALLOW_EMPTY_PASSWORD=yes
ENV MYSQL_USER=hyna
ENV MYSQL_USER_PASSWORD=psswd1234_
ENV MYSQL_HOSTNAME=mariadb

RUN set -ex ; \
service mysql start ; \
echo "CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE};" > /root/init_db.sql ; \
echo "CREATE USER IF NOT EXISTS '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_USER_PASSWORD}';" >> /root/init_db.sql ; \
echo "GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%';" >> /root/init_db.sql ; \
echo "FLUSH PRIVILEGES;" >> /root/init_db.sql ; \
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';" >> /root/init_db.sql ; \
mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "source /root/init_db.sql;" && \
rm /root/init_db.sql

EXPOSE 3306

CMD [ "mysqld" ]