---
title: ubuntu固定IP
url: 1248.html
id: 1248
categories:
  - IT·Q
tags:
  - linux
---

通过ubuntu16.4搭建了一个gitlab容器，提供个人的本地化代码管理,但是因为IP地址不固定，导致每次上传和下载代码的时候需要手动修改一下，十分麻烦。 在大多数版本的linux系统下面，都可以通过/etc/network/interfaces文件修改网络连接，之前的树莓派系统也是如此。但是在ubuntu16.4下遇到了些麻烦，首先通过ifconfig命令发现，没有eth0和wlan0网卡，而是enp0s25和wlp3s0这样命名的网卡，强迫症来了必须统一下。 ip link set wlp3s0 down ip link set wlp3s0 name wlan0 ip link set wlan0 up 修改配置文件： vim /etc/network/interfaces auto wlan0 #开机自动挂载wlan0 iface wlan0 inet static  #设置wlan0地址为静态 address 192.168.2.1 gateway 192.168.2.254 netmask 255.255.255.0 sudo /etc/init.d/networking restart sudo ifdown eth0 && sudo ifup eth0 如果Ubuntu系统采用的是desktop版，由于desktop版安装了NetworkManager，修改完interfaces文档中的内容不会生效，需要先修改/etc/NetworkManager/NetworkManager.conf文档中的managed参数，使之为true，并重启系统， 然后再修改/etc/network/interfaces文件才有效。