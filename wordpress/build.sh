#!/bin/bash
sudo docker pull wordpress:latest
#build.sh和dockerfile同目录放置
sudo docker build -t qitas/wordpress .

#启动容器
sudo docker run -itd -p 888:80 -v /mnt/web/qitas:/var/www/html/ --name wordpress qitas/wordpress
