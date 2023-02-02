# !/bin/bash
set -ex
echo "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;" > /root/init_db.sql
echo "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_USER_PASSWORD';" >> /root/init_db.sql
echo "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%';" >> /root/init_db.sql
echo "FLUSH PRIVILEGES;" >> /root/init_db.sql
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';" >> /root/init_db.sql

mysql -u root -p$MYSQL_ROOT_PASSWORD -e "source /root/init_db.sql;"

mysqld_safe --user=root --skip-grant-tables  --init-file="/root/install_db.sql"

rm /root/init_db.sql