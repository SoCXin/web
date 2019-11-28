---
title: Dockerfile
url: 1612.html
id: 1612
categories:
  - I·TQ
tags:
  - docker
---

### #參考例子

FROM ubuntu:16.04 LABEL author="qitas" COPY sources.list /etc/apt/sources.list RUN apt-get update RUN apt-get install -y python RUN apt-get install -y python-pip RUN apt-get clean all RUN pip install flask ADD hello.py /tmp/hello.py EXPOSE 5000 CMD \["python","/tmp/hello.py"\] ENV PYTHONIOENCODING=utf-8

### #相关指令

EXPOSE 5000 ： 暴露5000端口 CMD 在容器运行的时候提供一些命令及参数 CMD \["executable","param1","param2"\] ：运行一个可执行的文件并提供参数。 CMD \["param1","param2"\] (as default parameters to ENTRYPOINT) ：为ENTRYPOINT指定参数。如果CMD配合ENTRYPOINT那么他们的格式都需要是json数组格式，CMD用来提供参数。 CMD command param1 param2 (shell form) ：以”/bin/sh -c”的方法执行的命令。