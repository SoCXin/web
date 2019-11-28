---
title: pkg-config
url: 1727.html
id: 1727
comments: false
categories:
  - I·TQ
tags:
  - 系统
---

pkg-config可用与列举出某个库的相关信息，比如此库的路径、相关头文件路径等，这在程序编译时将非常有用,对我自己来说就是调用opencv的库进行相关编译的时候很方便。 环境变量PKG\_CONFIG\_PATH是用来指定pkg-config查找.pc文件的路径，pkg-config还会查找/usr/lib/pkgconfig/下的.pc文件，pkg-config按照设置路径的先后顺序进行搜索，直到找到指定的.pc文件为止。这样，库的头文件的搜索路径的设置实际上就变成了对.pc文件搜索路径的设置。 一般在安装完一个需要使用的库后，可以将相应的.pc文件，如glib-2.0.pc拷贝到/usr/lib/pkgconfig目录下，或者是通过设置环境变量PKG\_CONFIG\_PATH来添加glib-2.0.pc文件的搜索路径。 export  PKG\_CONFIG\_PATH = $PKG\_CONFIG\_PATH : /usr/local/lib/pkgconfig pkg-config常用参数： --list-all 列出所有已安装的共享库 --cflags 列出指定共享库的预处理和编译flag。 --libs 列出指定共享库的链接flag。