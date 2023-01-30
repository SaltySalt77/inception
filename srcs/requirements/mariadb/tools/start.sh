# !/bin/bash

$DIR=/var/lib/mysql/wordpress_db

if [ ! -d $DIR ]
then
    set -x
    mysql -u root -ptesting_ -e "source /root/initial_db.sql"
fi

service mysql start

# exec mysqld
bash