#!/bin/bash
# [Quick LAMP install Server Script] (for Arch users)
#Contributor : ritik-malik aur adwit-singh (thoda sa)

# Updating The Systen
echo -e "\nPacman in Action\n"
sudo pacman -Syu

# Installing Apache
echo -e "\nInstalling Apache...\n"
sudo pacman -S apache -y
systemctl enable httpd
systemctl restart httpd

# Install Mysql Server
echo -e "\nInstalling Mysql server...\n"
sudo pacman -S mariadb -y
mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
systemctl start mariadb
systemctl enable mariadb

# Install PHP
echo -e "\nInstalling PHP...\n"
sudo pacman -S php php-apache -y
systemctl restart httpd

echo -e "\n\nLemp stack installed successfully :)\n"


