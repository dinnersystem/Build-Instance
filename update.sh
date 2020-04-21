rm -r Frontend-Website
rm -r Backend
rm -r Factory-Frontend
rm -r Payment_Server
rm -r /Payment_Server/Executable/*

rm -r /usr/share/nginx/html/dinnersys_beta
mkdir /usr/share/nginx/html/dinnersys_beta
mkdir /usr/share/nginx/html/dinnersys_beta/frontend
mkdir /usr/share/nginx/html/dinnersys_beta/backend
mkdir /usr/share/nginx/html/dinnersys_beta/fclient
mkdir /usr/share/nginx/html/dinnersys_beta/fclient/templates

git clone https://github.com/dinnersystem/Frontend-Website
git clone --branch dev https://github.com/dinnersystem/Backend
git clone https://github.com/dinnersystem/Factory-Frontend
cp -r Frontend-Website/* /usr/share/nginx/html/dinnersys_beta/frontend
cp -r Backend/* /usr/share/nginx/html/dinnersys_beta/backend
cp -r Factory-Frontend/FactoryClient/FactoryClient/publish/* /usr/share/nginx/html/dinnersys_beta/fclient
cp -r Factory-Frontend/FactoryClient/FactoryClient/templates/* /usr/share/nginx/html/dinnersys_beta/fclient/templates/

cp -r server_constant_files/u_move_u_dead /usr/share/nginx/html/dinnersys_beta/frontend/u_move_u_dead
cp server_constant_files/config.php /usr/share/nginx/html/dinnersys_beta/backend/backend_proc/config.php
cp server_constant_files/backend.php /usr/share/nginx/html/dinnersys_beta/backend/backend.php
cp server_constant_files/index.php /usr/share/nginx/html/index.php
cp server_constant_files/client.zip /usr/share/nginx/html/dinnersys_beta/factory_client/client.zip

cp server_constant_files/index.php /usr/share/nginx/html/dinnersys_beta/index.php

git clone --branch dev https://github.com/dinnersystem/Payment_Server
mv Payment_Server/Payment_Server/* /Payment_Server/Executable
mv /Payment_Server/Resource/config.js /Payment_Server/Executable/

rm -r Frontend-Website
rm -r Backend
rm -r Factory-Frontend
rm -r Payment_Server

cd /Payment_Server/Executable
npm install
node app.js
