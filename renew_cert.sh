#!/bin/bash
sudo certbot renew
sudo /home/pi/media_center/home-nas/update_cert.sh d0c89794-86f0-44ac-8613-c0e3f5d34399 /etc/letsencrypt/live/lich.tech/cert.pem  /etc/letsencrypt/live/lich.tech/privkey.pem
sudo openssl pkcs12 -export -out cert.p12 -inkey /etc/letsencrypt/live/lich.tech/privkey.pem -in /etc/letsencrypt/live/lich.tech/cert.pem -password pass:15127430
