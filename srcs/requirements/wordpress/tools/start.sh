chown -R www-data:www-data /var/www/

if [ ! -f "/var/www/html/wordpress/index.php" ]; then
    set -x
	sudo -u www-data sh -c " \
    wp core download --locale=ko_KR --path=$WP_PATH && \
    wp config create --dbname=$MYSQL_DATABASE --dbhost=$MYSQL_HOSTNAME \
    --dbuser=$MYSQL_USER --dbpass=$MYSQL_USER_PASSWORD && \
    wp core install --url=$DOMAIN_NAME --title=$WP_TITLE \
    --admin_user=$WP_ADMIN --admin_password=$WP_ADMIN_PW --admin_email=$WP_ADMIN_EMAIL && \
    wp user create $WP_USER $WP_USER_EMAIL --role=author --user_pass=$WP_PASS && \
    cp -r $WP_PATH/wordpress/* $WP_PATH/ \
	"
fi

exec /usr/sbin/php-fpm7.3 -F