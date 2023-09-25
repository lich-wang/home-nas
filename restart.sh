#!/bin/bash
cd /home/pi/media_center/home-nas
sudo docker-compose down
sudo docker-compose pull
sudo docker image prune -f
sudo docker-compose up -d
