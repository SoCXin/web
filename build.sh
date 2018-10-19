#!/bin/bash
sudo docker pull wordpress:latest
sudo docker pull mariadb:latest

#build dockerfile

sudo docker build -t qitas/wordB ./DB/.
sudo docker build -t qitas/wordpress .

#download patch
#cd ..
#sudo git clone https://github.com/Qitas/patch-wordpress.git

mkdir wordpress

#启动容器

sudo docker run -itd  --restart=always -p 13306:3306 -v ./wordB:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=Qitas120 --name wordB qitas/wordB
sudo docker run -itd  --restart=always -p 3306:13306 -p 222:80 -v ./wordpress:/var/www/html/ --link qitas/wordB --name wordpress qitas/wordpress

#cp -f ./patch-wordpress/wordpress/* .
