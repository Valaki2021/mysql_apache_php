#!/bin/bash

echo "A következő csomagok telepítése folyamatban: Apache2, MySQL, PHP 7.4"
echo "A telepítő 10 másodperc múlva elindul"

sleep 10

echo "Frissítések beszerzése..."

sleep 5

sudo apt update

sudo apt get upgrade

echo "Apache 2 csomag telepítése..."

sleep 5

sudo apt install apache2

echo "MySQL csomag telepítése..."

sleep 5

sudo apt install mysql-server

sudo mysql_secure_installation

echo "PHP 7.4 telepítése...."

sleep 5

sudo apt install php libapache2-mod-php php-mysql

php -v

echo "Telepítés befejezve!"
