---
title: bootloader
url: 1029.html
id: 1029
categories:
  - I·TQ
tags:
  - 编程
---

早期计算机启动会遇到类似现有鸡还是蛋的问题，必须先运行程序才能完成硬件启动，必须先启动硬件才能运行程序。 在系统驱动软件简单的时候称为Firmware，类似单片机裸驱程序，但随着各种操作系统的出现，需要将引导部分单独出来，而这段最先运行的引导程序就是bootloader，通过初始化代码bootloader完成硬件的启动和配置。 随着处理器发展，boot(也称bootstrap)要处理的事物越来越多，包括时钟和内存配置等。loader(加载器)的概念是由RAM和ROM存储分化引起，需要控制不同种类的存储器读写操作。 嵌入式MCU的bootloader没有本质不同，只是少了cache和MMU这些配置，在IAR和keil下开发，IDE会自动加载bootloader文件，将细节隐藏了。