#!/bin/bash

echo "Atualizando Servidor..."

apt-get update
apt-get upgrade -y

echo "Instalando Apache.."

apt-get install apache2 -y

echo "Instalando o unzip..."

apt-get install unzip -y

echo "Instalando o wget..."

apt-get install wget -y

echo "Abrindo tmp..."

cd /tmp

echo "Download Arquivo .zip GitHub..."

wget https://github.com/RRSA07/instagram-dio/archive/refs/heads/master.zip

echo "Descompactando Arquivo .zip..."

unzip master.zip

echo "Abrindo e Copiando Arquivo..."

cd instagram-dio-mmaster
cp -R * /var/www/html/

echo "Finalizado..."
