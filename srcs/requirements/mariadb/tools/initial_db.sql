CREATE DATABASE IF NOT EXISTS wordpress_db;
CREATE USER IF NOT EXISTS 'hyna'@'%' IDENTIFIED BY 'psswd1234_';
GRANT ALL PRIVILEGES ON wordpress_db.* TO 'hyna'@'%';
FLUSH PRIVILEGES;

ALTER USER 'root'@'localhost' IDENTIFIED BY 'psswd1234_';