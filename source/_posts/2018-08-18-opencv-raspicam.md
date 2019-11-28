---
title: opencv raspicam
url: 1665.html
id: 1665
comments: false
categories:
  - IT·Q
tags:
  - OpenCV
  - 树莓派
---

树莓派利用基于C++的opencv的CaptureVideo函数调用外部摄像头，比如usb摄像头等是没有问题的，但是无法调用自带的摄像头，因此需哟通过调用其他的函数或者改变自带CSI摄像头的属性设置才可以获取实时图像等。 通过python3调用opencv操作摄像头，需要导入[picamera库](https://picamera.readthedocs.io/) import picamera with picamera.PiCamera() as camera: camera.resolution = (1920,1080) camera.framerate = 25 camera.vflip = True camera.hflip = True camera.start_preview() 通过C++调用opencv,会遇到自带的CaptureVideo无法读取自带摄像头的问题，opencv不能直接对树莓派原装摄像头进行调用，因为raspicam不是V4L驱动[参见](http://www.linux-projects.org/uv4l/installation/)： curl http://www.linux-projects.org/listing/uv4l\_repo/lpkey.asc | sudo apt-key add - 以下内容添加到/etc/apt/sources.list文件中： deb http://www.linux-projects.org/listing/uv4l\_repo/raspbian/stretch stretch main sudo apt-get update 安装驱动 sudo apt-get install uv4l uv4l-raspicam sudo apt-get install uv4l-raspicam-extras #boot启动,可选 sudo service uv4l_raspicam restart sudo apt-get install uv4l-server uv4l-uvc uv4l-xscreen uv4l-mjpegstream uv4l-dummy uv4l-raspidisp sudo apt-get install uv4l-webrtc 最关键的一步： /etc/modules-load.d/rpi-camera.conf 添加 bcm2835-v4l2 rpi-camera.conf可能是需要新建的文件 测试用的代码：[https://github.com/Qitas/raspicam.git](https://github.com/Qitas/raspicam.git)