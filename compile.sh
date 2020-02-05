# This script will compile the Release version of Factory Client and publish it into server_constant_files

git clone https://github.com/dinnersystem/Factory-Frontend
zip client.zip Factory-Frontend/FactoryClient/FactoryClient/bin/Release/

mv client.zip server_constant_files
