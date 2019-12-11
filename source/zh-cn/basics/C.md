---
title: C | C++
---

C | C++ 是嵌入式领域最为常用的语言，也是针对设备效率较高的语言


## 数据结构

* 数组
* 栈
* 队列
* 链表
* 树
* 图
* 字典树
* 散列表（哈希表）


## clang-format

它是基于clang的一个命令行工具，能够自动化格式C/C++/Obj-C代码，支持多种代码风格：Google, Chromium, LLVM, Mozilla, WebKit，也支持自定义风格（通过编写.clang-format文件）很方便的同意代码格式。

使用方法
Linux下下安装Clang-format : sudo apt-get install clang-format
以LLVM代码风格格式化main.cpp, 结果直接写到main.cpp

clang g-format -i main.cpp -style=LLVM

当然也支持对指定行格式化，格式化main.cpp的第1，2行

clang-format -lines=1:2 main.cpp
