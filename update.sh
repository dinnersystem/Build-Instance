curl -L https://github.com/dinnersystem/Factory-Frontend/releases/latest/download/client.zip --output server_constant_files/client.zip

rm -r Frontend-Website
rm -r Backend

rm -r /usr/share/nginx/html/dinnersys_beta
mkdir /usr/share/nginx/html/dinnersys_beta
mkdir /usr/share/nginx/html/dinnersys_beta/frontend
mkdir /usr/share/nginx/html/dinnersys_beta/backend
mkdir /usr/share/nginx/html/dinnersys_beta/factory_client

git clone https://github.com/dinnersystem/Frontend-Website
git clone https://github.com/dinnersystem/Backend
cp -r Frontend-Website/* /usr/share/nginx/html/dinnersys_beta/frontend
cp -r Backend/* /usr/share/nginx/html/dinnersys_beta/backend

cp -r server_constant_files/u_move_u_dead /usr/share/nginx/html/dinnersys_beta/frontend/u_move_u_dead
cp server_constant_files/config.php /usr/share/nginx/html/dinnersys_beta/backend/backend_proc/config.php
cp server_constant_files/backend.php /usr/share/nginx/html/dinnersys_beta/backend/backend.php
cp server_constant_files/index.php /usr/share/nginx/html/index.php
cp server_constant_files/client.zip /usr/share/nginx/html/dinnersys_beta/factory_client/client.zip

cp server_constant_files/index.php /usr/share/nginx/html/dinnersys_beta/index.php

unzip -qq server_constant_files/phpMyAdmin.zip -d /usr/share/nginx/html

rm -r Frontend-Website
rm -r Backend
