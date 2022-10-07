#!/bin/bash

sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get install wget -y
sudo apt-get update && apt-get install proftpd

rm /etc/proftpd/proftpd.conf

wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=12mEH_CfWr4Dnl--bj6MsbzbHdHm1E0OH' -O /etc/proftpd/proftpd.conf
sudo service proftpd restart

#installing TLS

mkdir /etc/proftpd/ssl
openssl req -new -x509 -days 365 -nodes -out /etc/proftpd/ssl/proftpd.cert.pem -keyout /etc/proftpd/ssl/proftpd.key.pem
chmod 600 /etc/proftpd/ssl/proftpd.*
rm /etc/proftpd/tls.conf

wget --no-check-certificate 'https://docs.google.com/uc?export=download&id=1QlEB3du_D-Ab8aPzshm73T_QMaLKWW3p' -O /etc/proftpd/tls.conf
sudo service proftpd restart

echo "FTPs installation complete"




