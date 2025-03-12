#!/bin/bash
home_path="/home/linux/home-nas"
cd $home_path
sudo docker compose down
sudo docker compose pull
sudo docker image prune -f
sudo docker compose up -d
