---
title: docker container
url: 1605.html
id: 1605
categories:
  - I·TQ
tags:
  - docker
---

### 如何运行容器

#启动一个伪tty终端绑定到当前界面，等同于SSH登陆效果，如果要保持后台允许，需要加参数 -d docker run -it centos:latest /bin/bash #进入一个已经在运行的容器内部 docker exec -it <name/ID> bin/bash #查看docker实例运行日志，确保正常运行 docker logs $CONTAINER\_ID #查看image或container的底层信息 docker inspect $CONTAINER\_ID #启动和停止一个容器 docker start/stop/restart ：开启/停止/重启container

### 查看相关容器

docker ps ：列出当前所有正在运行的container docker ps -l：列出最近一次启动的container docker ps -a ：列出所有的container（包含运行过的） docker ps -q ：列出最近一次运行的container ID docker images --tree 显示镜像的所有层(layer)指令无效了

### 如何删除容器

#删除指定的container docker rm #删除所有的container docker ps -a -q | xargs docker rm #删除生成容器的镜像文件 docker rmi <镜像名或ID>

### 通过Dockerfile生成自定义的容器镜像文件

docker build #path路径为Dockerfile配置文件 docker build -t repo\[:tag\] #在上面的基础上指定repo和可选的tag