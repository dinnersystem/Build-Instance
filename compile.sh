# This script will compile the Release version of Factory Client and publish it into server_constant_files
rm -r Factory-Frontend

git clone https://github.com/dinnersystem/Factory-Frontend
cd Factory-Frontend/FactoryClient/FactoryClient/bin/
mv Release Client
zip client.zip Client/*
cd ../../../../

mv Factory-Frontend/FactoryClient/FactoryClient/bin/Client/client.zip server_constant_files

rm -r Factory-Frontend
