---
title: tensorflow on RPi
url: 1693.html
id: 1693
comments: false
categories:
  - I·TQ
tags:
  - mAIn
  - tensorflow
  - 树莓派
  - 深度学习
---

很久很久以前，如果你想要在树莓派这种单板计算机上使用谷歌的tensorflow，可能需要参考这两个大神的代码：[https://github.com/samjabrahams/tensorflow-on-raspberry-pi](https://github.com/samjabrahams/tensorflow-on-raspberry-pi) 和 [https://github.com/romilly/rpi-docker-tensorflow](https://github.com/romilly/rpi-docker-tensorflow) 不过现在，我们可以使用 Python pip 从预先构建的二进制文件中在树莓派上安装 TensorFlow 1.9 （系统版本要求 > Raspbian 9（stretch）），你可以通过终端运行以下两个命令来安装： apt-get install libpython3-all-dev:armhf sudo apt install libatlas-base-dev pip3 install tensorflow 测试安装的Python语句： import tensorflow as tf tf.enable\_eager\_execution() hello = tf.constant(‘Hello, TensorFlow!’) print(hello) 如果输出Hello, TensorFlow! ，表示安装成功了。 [链接参考](https://medium.com/tensorflow/tensorflow-1-9-officially-supports-the-raspberry-pi-b91669b0aa0) 填坑： 导入tensorflow报错 /usr/lib/python3.5/importlib/\_bootstrap.py:222: RuntimeWarning: compiletime version 3.4 of module 'tensorflow.python.framework.fast\_tensor_util' does not match runtime version 3.5 原因是tensorflow存在的python兼容问题，在tf-nightly修补了这个,但是树莓派不能找到这个版本 wget https://www.python.org/ftp/python/3.6.6/Python-3.6.6.tgz 安装python依赖环境 sudo apt-get install build-essential libsqlite3-dev sqlite3 bzip2 libbz2-dev or sudo apt-get install build-essential tk-dev libncurses5-dev libncursesw5-dev libreadline6-dev libdb5.3-dev libgdbm-dev libsqlite3-dev libssl-dev libbz2-dev libexpat1-dev liblzma-dev zlib1g-dev 3 卸载旧python，编译安装新python: tar zxvf Python-3.6.6.tgz cd Python-3.6.6 sudo ./configure sudo make sudo make install 处理新旧版本问题 sudo rm /usr/bin/python3 sudo ln -s /usr/local/bin/python3.6 /usr/bin/python3 sudo ln -s /usr/local/bin/pip3.6 /usr/bin/pip3.6 如果有问题或者需要精简空间的，可以卸载原来的python3 sudo apt-get remove --auto-remove python3.5