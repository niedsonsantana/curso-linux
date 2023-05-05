#!/bin/bash

echo "Atualizando sistemas"
apt-get update
apt-get upgrade -y
echo "Atualização concluida"
echo "Instalação apache"
apt-get install apache2 -y
echo "Instalação unzip"
apt-get install unzip -y

echo "Baixando aplicaçao"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html


