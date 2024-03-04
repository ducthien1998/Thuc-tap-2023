#!/bin/bash
#-----Cai dat mariadb-----
echo "install mariadb"
cd
systemctl stop firewalld
setenforce 0
yum install MariaDB-server MariaDB-client -y
systemctl enable mariadb
systemctl start mariadb

echo " Hoan tat cai dat mariadb"

mysql_secure_installation <<SECURESQL
y
vnpt1
vnpt1
y
n
y
y
SECURESQL
echo "Hoan thanh cai lai mat khau va quyen root"

mysql -u root -pvnpt1<<SECURESQL
create database iwpos7;
create user 'bdt18'@'localhost' identified by 'vnpt1';
GRANT ALL PRIVILEGES ON iwpos7.* TO 'bdt18'@'localhost';
flush privileges;
exit
SECURESQL
echo "Hoan thanh tao databases va user"
#-----Cai dat apache2-----
echo "install Apache"

yum install -y httpd 
systemctl start httpd
systemctl enable httpd
#-----Cai dat php-----
echo "install php 7x"

yum install -y epel-release yum-utils
yum install -y http://rpms.remirepo.net/enterprise/remi-release-7.rpm
yum-config-manager --enable remi-php73
yum install -y php php-common php-opcache php-mcrypt php-cli php-gd php-curl php-mysqlnd
php -v
echo "<?php phpinfo(); ?>" > /var/www/html/info.php
systemctl restart httpd

#-----Cai dat wordpress-----
echo "install wordpress"

cd /var/www/html
wget https://wordpress.org/latest.tar.gz
tar xzvf latest.tar.gz
mv wordpress/* /var/www/html/
mv wp-config-sample.php wp-config.php
sed -i -e "s/database_name_here/"iwpos7"/g" /var/www/html/wp-config.php
sed -i -e "s/username_here/"root"/g" /var/www/html/wp-config.php
sed -i -e "s/password_here/"vnpt1"/g" /var/www/html/wp-config.php
chown -R apache:apache /var/www/html/*
chmod -R 755 /var/www/html/*
systemctl restart httpd

        echo  "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx$"
        echo  "x                                                              x$"
        echo  "x   >>>>>>>>> QUA TRINH CAI DAT WORDPRESS HOAN TAT <<<<<<<<<   x$"
        echo  "x                                                              x$"
        echo  "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx$"