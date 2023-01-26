wget https://wordpress.org/latest.tar.gz && \
tar -xvf latest.tar.gz && \
mv ~/wordpress/* /var/www/html/ && \
chown -R www-data:www-data /var/www/html && \
rm -r ~/wordpress latest.tar.gz
