---
title: raspistill
url: 1616.html
id: 1616
categories:
  - I·TQ
tags:
  - 树莓派
---

玩树莓派，必然会接触到摄像头，在Raspbain系统上使用RaspiCam就必然会使用raspistill工具和指令。 首先，对于一个新的Raspbain系统，需要先配置相关外设使能，sudo raspi-config，在其中的interface中使能camera。 raspistill不需要单独安装，其作用是在指定的时间运行摄像头捕获图片，主要的参数及命令： -w, --width : 设置图像宽度 <尺寸> -h, --height : 设置图像高度 <尺寸> -q, --quality : 设置jpeg品质 <0到100> -r, --raw : 增加raw原始拜尔数据到JPEG元数据 -o, --output : 输出文件名 <文件名>，如果要写到stdout，使用`-o -`，如果不特别指定，图像文件不会被保存 -l, --latest : 链接最近的完整图像到指定文件 <文件名> -v, --verbose : 在运行摄像头时输出详细信息 -t, --timeout : 拍照和关闭时的延时指定，未指定时默认是5s -e, --encoding : 编码来输出指定格式文件 （jpg, bmp, gif, png） -tl, --timelapse : 间隔拍摄，每拍摄一张图片 -fp, --fullpreview : 用静态捕捉分辨率运行预览（可能会减小预览帧率） -k, --keypress : 按键触发，按\`ENTER\`键拍照，按\`X\`然后\`ENTER\`键退出 -s, -signal : 信号触发，等待另一个进程信号来拍摄一张照片 -g, -gl : 绘制预览到文本，而不是使用视频渲染组件 -gc, --glcapture : 捕获GL帧buffer而不是摄像机图像 -set, --settings : 检索摄像机设置值然后写出到stdout -cs, --camselect : 选择摄像头设备 <数字>，默认0 拍照的曝光参数： -sh, --sharpness : 设置图像锐度 （-100 到 100） -co, --contrast : 设置图像对比度 （-100 到 100） -br, --brightness : 设置图像亮度 （0 到 100） -sa, --saturation : 设置图像饱和度 （-100 到 100） -ISO, --ISO : 设置摄像头感光度 -vs, --vstab : Turn on video stabilisation 开启摄像头防抖模式（是这个意思吗？） -ev, --ev : 设置EV补偿 -ex, --exposure : 设置曝光模式（参见提示）-ex verylong：焦距，无限远； -awb, --awb : 设置AWB模式（参见提示） -ifx, --imxfx : 设置图像效应（参见提示） -cfx, --colfx : 设置色彩效应（参见提示） -mm, --metering : 设置测光模式（参见提示） -rot, --rotation : 设置图像旋转 （0到359） -hf, --hflip : 设置水平翻转 horizontal flip -vf, --vflip : 设置垂直翻转 vertical flip -roi, --roi : 设置interest区域 （啥叫interset?） -ss, --shutter : 设置快门速度，微秒 -awbg, --awbgains : 设置AWB阈值， AWB模式必须关闭 -drc, --drc : 设置DRC水平   视频： 对应的拍摄视频实现方式raspivid，raspivid 的输出是一段未压缩的 H.264 视频流，视频不含声音 raspivid -o test.h264 # 实时监控并输出到stdout： raspivid -t 0 -w 320 -h 240 -o -

#### 环境配置：

在 Raspbian 上安装gpac，将H.264格式视频流转换为.mp4 格式视频 sudo apt-get install -y gpac MP4Box -fps 30 -add keychain.h264 keychain.mp4 当然，除此之外，还可以使用python开发 - picamera 安装方式： apt-get install python-picamera 或者： apt-get install python3-picamera [参考文献](https://www.raspberrypi.org/documentation/usage/camera/raspicam/raspivid.md)