# certbot certonly
openssl pkcs12 -export -out server.pfx -inkey privkey.pem -in fullchain.pem
