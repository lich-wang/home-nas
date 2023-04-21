#!/bin/bash
sudo docker-compose down
sudo docker-compose pull
sudo docker image prune -f
sudo docker-compose up -d