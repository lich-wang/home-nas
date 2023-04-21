#!/bin/bash
sudo certbot renew
sudo ./update_cert.sh d0c89794-86f0-44ac-8613-c0e3f5d34399 /etc/letsencrypt/live/lich.tech/cert.pem  /etc/letsencrypt/live/lich.tech/privkey.pem
