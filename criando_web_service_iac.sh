#!/bin/bash

echo "Atualizando o sistema...."

apt-get update
apt-get upgrade -y

echo "Instalando pacotes necessários..."

apt-get install apache2 -y
apt-get install unzip -y

echo "Realizando download do site..."

#Download dos arquivos do meu site a partir do meu repositório no GitHub para a pasta tmp.
wget -P /tmp  https://github.com/Luizsaw/Site-Meu-Portfolio/archive/refs/heads/main.zip

echo "Descompactando os arquivos e copiando para a pasta padrão do apache..."

unzip /tmp/main.zip -d /tmp
cp /tmp/Site-Meu-Portfolio-main/* /var/www/html -r

echo "Subindo a pasta do iac para o repositório no GitHub..."

#Acessando a pasta do projeto.
cd /repo/Linux-Web-Server/

#Configurando o Git no sistema.
git config --global user.name "Luizsaw"
git config --global user.email "luizsaw@gmail.com"

#Subindo a pasta.
git init
git add .
git commit -m "Primeiro commit"
git remote add origin https://github.com/Luizsaw/Linux-Web-Server.git
git branch -m master main

#Neste projeto específico eu quero forçar o push
git push -f origin main
 
echo "Fim script..."
