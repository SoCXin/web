---
title: docker images
url: 1587.html
id: 1587
categories:
  - I·TQ
tags:
  - docker
---

使用docker容器技术，可以将容器镜像文件进行打包管理，其中常用的命令包括：export & import  save & load

### export

export命令可用于持久化容器（明白不是镜像），得到容器ID： sudo docker ps -a 接着执行导出： sudo docker export > /home/export.tar

### save

Save命令用于持久化镜像（不是容器）。所以，我们就需要通过以下方法得到镜像名称： sudo docker images 接着执行保存： sudo docker save busybox-1 > /home/save.tar

### load

两者的使用方法是一样的，导入压缩包生成镜像： docker load < caffe2ai.tar

### import

import可以重新指定镜像的名字 ：docker import tensorflow.rar tensorflow:latest

### 两对指令间的区别：

使用export比使用save保存的文件要小一些,export导出会丢失历史和元数据。export导出后再导入将无法回滚到之前的层(layer)（可以执行docker tag 来回滚之前的层）。 import可以重新指定镜像的名字，docker load不可以。