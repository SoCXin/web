---
title: linux通过SSH连接linux
url: 736.html
id: 736
categories:
  - IT·Q
---

首先需要在本地linux上安装并启动openssh-client，然后在bash中通过ssh IP的方式登陆，最简单的如ssh 192.168.1.5(本地root下登陆对方root)，如果要登陆指定的用户，可以采用ssh name@192.168.1.5，等效的方式还有ssh 192.168.1.5 -l name，其中name可以等于root。 如果要连接的远端不是采用默认的SSH端口（22），可以通过参数-p指定要连接的端口，如ssh name@192.168.1.5 -p 222 通过输入exit 或在ctrl D退出远程登陆