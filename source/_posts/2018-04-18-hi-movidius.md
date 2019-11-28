---
title: Hi movidius
url: 1411.html
id: 1411
comments: false
categories:
  - I·TQ
tags:
  - mAIn
  - 雾计算
---

_今天很开心，因为老板给了我一个movidius让我研究，可以算是从职业层面将我带入到了AI领域吧。_

* * *

AI界的各种专用加速芯片，大多彩头被nvidia GPU和谷歌TPU拿走，作为传统芯片巨头的Intel必然会有所表示，代表就是其2016年9月收购的以色列movidius及其VPU Myriad。英特尔2017年7月20日推出了Movidius™神经计算棒搭载的就是Myriad 2 VPU，该芯片在1瓦的功率下提供超过每秒1000亿次浮点运算的性能，以便在边缘嵌入式设备上直接运行实时深度神经网络（DNN），完全是瞄准了边缘计算这一领域，这使得各种人工智能应用都能离线部署到终端。 movidius作为世界首个基于USB模式的深度学习推力工具和独立AI加速器，接入十分便捷而且只要79美元，相比较于NVIDIA的Jetson TX2 399美元售价更具有可玩性和边缘集成性，突然有点喜欢intel各种“棒子”了。 从目前的资料来看，movidius需要基于Caffe的卷积神经网络（CNN），遗憾不支持TF，使用intel的MDK进行开发，遗憾获取有门槛，Myriad芯片可以提供超过4TOPS的总体性能表现，movidius设备的接口为USB 3.0A，集成4G LPDDR3，如果把它当成嵌入式设备已经很高咖了。