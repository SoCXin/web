---
title: nvidia-docker
url: 1155.html
id: 1155
categories:
  - I·TQ
tags:
  - docker
---

不知道其他人都遇到过那些安装TF或者Caffe的坑，反正不安装配置几遍环境，都不好意思说自己会玩。后来烦了，直接用docker搭建环境，但显卡环境这坑还是在。 docker run -it --privileged=true privileged大约在0.6版被引入docker,使用该参数，container内的root拥有真正的root权限。否则，container内的root只是外部的一个普通用户权限。privileged启动的容器，可以看到很多host上的设备，并且可以执行mount，甚至允许你在docker容器中启动docker容器。如果在容器中需要允许使用显卡之类的外设，需要这个命令。 因为locale 的设置默认编码为ascii，当用ascii编码去解释python3默认unicode编码会有问题，解决方式是容器在初始化时候设置shell的默认编码方式为utf-8,需要重启容器docker run -e PYTHONIOENCODING=utf-8 my_container:latest my-python3 在docker容器中使用显卡，使用限制诸多，在物理机安装相关驱动的情况下，还需要容器内部安装对应版本的驱动和cuda库，安装起来十分不便，所以nvidia官方提供了对应的nvidia-docker容器，通过nvidia-docker可以免去很多繁琐的配置安装，保证环境的一致。 [https://github.com/NVIDIA/nvidia-docker](https://github.com/NVIDIA/nvidia-docker?utm_source=tuicool&utm_medium=referral) ![](http://www.itq.ink/wp-content/uploads/2018/03/nvidia-docker-300x212.png) #移除已经存在的nvidia-docker docker volume ls -q -f driver=nvidia-docker | xargs -r -I{} -n1 docker ps -q -a -f volume={} | xargs -r docker rm -f sudo yum remove nvidia-docker # 添加相应的安装源 curl -s -L https://nvidia.github.io/nvidia-docker/centos7/x86_64/nvidia-docker.repo | \ sudo tee /etc/yum.repos.d/nvidia-docker.repo yum search --showduplicates nvidia-docker # 安装并配置 sudo yum install -y nvidia-docker2 sudo pkill -SIGHUP dockerd # 通过安装运行最新版本的CUDA测试docker docker run --runtime=nvidia --rm nvidia/cuda nvidia-smi 运行tensorflow GPU版本 nvidia-docker pull tensorflow/tensorflow:latest-gpu nvidia-docker run -it -d -p 8888:8888 tensorflow/tensorflow:latest-gpu 执行上诉语句后，会产生一个对应编号，通过查看对应编号获取token nvidia-docker logs 69fede4460082f3e4aa847fc34ac0f58e797dc44b10d65643a70d2a1e7e4ba03 相应的tensorflow通过jupter在浏览器中编成，初次进入需要用到token