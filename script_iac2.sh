#!/bin/bash

echo 'update do servidor'

apt-get update
apt-get upgrade -y

echo 'install do apache2'

apt-get install apache2 -y

echo 'install do unzip'

apt-get install unzip -y


echo 'download e copia dos arquivos de aplicacao'

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html
