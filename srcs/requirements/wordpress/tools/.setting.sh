#!/bin/bash
# wp core install --url=$DOMAIN_NAME --title=$WP_TITLE --admin_user=$WP_ADMIN --admin_password=$WP_ADMIN_PW --admin_email=$WP_EMAIL && \
# wp user create $WP_USER $WP_EMAIL --role=author --user_pass=$WP_PASS
chown -R www-data:www-data /var/www/

if [ ! -f "/var/www/html/index.php" ]; then
	sudo -u www-data sh -c " \
    wp core download --locale=en_US && \
    wp config create --dbname=$MYSQL_DATABASE --dbhost=$MYSQL_HOSTNAME --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD && \
	"
    mv /var/www/html/wordpress/* /var/www/html
fi

exec /usr/sbin/php-fpm7.3 -F