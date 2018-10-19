#!/bin/bash
sudo docker pull wordpress:latest
sudo docker pull mariadb:latest

#获取文件
#wget http://wordpress.org/latest.tar.gz
#tar -xzvf latest.tar.gz

#build.sh和dockerfile同目录放置
sudo docker build -t qitas/wordpress .

#启动容器
sudo docker run -itd  --restart=always -p 888:80 -v /mnt/web/qitas:/var/www/html/ --name wordpress qitas/wordpress
