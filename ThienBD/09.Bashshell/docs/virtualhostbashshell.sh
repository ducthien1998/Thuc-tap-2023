#!/bin/bash
#===Cau hinh virtual host===
# ---Cai dat web server apache---
sudo apt -y update 
sudo apt install apache2
# ---Thay doi cai dat tuong lua--- 
sudo ufw allow 'Apache'
# ---Kiem tra web server---
sudo systemctl status apache2
# ---Thiet lap virtual host---
sudo mkdir /var/www/ducthien
sudo chown -R $USER:$USER /var/www/ducthien
sudo chown -R 755 /var/www/ducthien
sudo nano /var/www/ducthien/index.html


sudo nano /etc/apache2/sites-available/ducthien.conf
sudo a2ensite ducthien.conf
sudo a2dissite 000-default.conf
sudo apache2ctl configtest
sudo systemctl restart apache2

# ---Thiet lap virtual host thu 2---
sudo mkdir /var/www/ducthien2
sudo chown -R $USER:$USER /var/www/ducthien2
sudo chown -R 755 /var/www/ducthien2
sudo nano /var/www/ducthien2/index.html


sudo nano /etc/apache2/sites-available/ducthien2.conf

sudo a2ensite ducthien2.conf


# ---Them port trong file config---

# ---Cau hinh tuong lua allow port moi---
sudo ufw allow 81
sudo systemctl restart apache2