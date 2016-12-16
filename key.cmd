openssl req -x509 -newkey rsa:4096 -keyout key.pem -out cert.pem -days 365 -nodes
openssl dhparam  -dsaparam -out dhparam.pem 4096